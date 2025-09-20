package com.edu.user.controller;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.edu.common.entity.Role;
import com.edu.common.entity.User;

//import com.edu.user.service.RoleService;
import com.edu.user.client.RoleClient;
import com.edu.user.service.UserRoleService;
import com.edu.user.service.UserService;
import com.edu.common.vo.ResultVo;
import com.edu.common.vo.RoleUserVo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-21
 */
@RestController
@RequestMapping("/userRole")
public class UserRoleController {
    @Resource
    UserService userService;
    @Resource
//    RoleService roleService;
    RoleClient roleService;
    @Resource
    UserRoleService userRoleService;
    @GetMapping("/getUser")
    ResultVo<RoleUserVo> getUserList(Long roleId){

        return ResultVo.success(new RoleUserVo(userService.getList(),userRoleService.getByRoleId(roleId)));
    }
    @PostMapping("/save")
    ResultVo<Boolean> save(Long roleId, Long[] userIds){
        Role role= roleService.getById(roleId).getContent();
        for (Long userId : userIds) {
            UpdateWrapper<User>wrapper=new UpdateWrapper<>();
            wrapper.eq("id",userId);
            wrapper.set("type",role.getName());
            userService.update(wrapper);

        }
        return ResultVo.success(userRoleService.save(roleId, userIds));
    }

}
