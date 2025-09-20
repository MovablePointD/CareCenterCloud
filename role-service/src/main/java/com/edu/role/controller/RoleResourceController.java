package com.edu.role.controller;

import com.edu.role.service.RoleResourceService;
//import com.edu.service.SysResourceService;
import com.edu.role.client.SysResourceClient;
import com.edu.common.vo.ResultVo;
import com.edu.common.vo.RoleResourceVO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * <p>
 * 角色和权限关联表 前端控制器
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-21
 */
@RestController
@RequestMapping("/roleResource")
public class RoleResourceController {
    @Resource
//    SysResourceService sysResourceService;
    SysResourceClient sysResourceService;
    @Resource
    RoleResourceService roleResourceService;
    @GetMapping("/getResource")
    ResultVo<RoleResourceVO> getResource(Long roleId) {
        return ResultVo.success(new RoleResourceVO(sysResourceService.getList().getContent(),roleResourceService.getByRoleId(roleId)));
    }
    @PostMapping("/save")
    ResultVo<Boolean> save(Long roleId, Long[] menuIds, Long[] btnIds) {
        return ResultVo.success(roleResourceService.save(roleId, menuIds, btnIds), "保存成功");
    }
}
