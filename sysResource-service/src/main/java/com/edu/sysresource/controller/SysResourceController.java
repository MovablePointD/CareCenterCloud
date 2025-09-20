package com.edu.sysresource.controller;

import com.edu.common.entity.SysResource;
import com.edu.sysresource.service.SysResourceService;
import com.edu.common.vo.ResultVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * 权限表 前端控制器
 * </p>
 *
 * @author limengya
 * @since 2024-08-09
 */
@RestController
@RequestMapping("/sysResource")
@Tag(name = "权限接口") // ✅ 替代 @Api
public class SysResourceController {

    @Resource
    SysResourceService sysResourceService;

    @GetMapping("/list")
    @Operation(summary = "获取权限列表")
    public ResultVo<List<SysResource>> list() {
        return ResultVo.success(sysResourceService.getList());
    }

    @PostMapping("/add")
    @Operation(summary = "添加权限")
    public ResultVo<Boolean> add(
            @Parameter(description = "权限名称") String name,
            @Parameter(description = "描述") String description,
            @Parameter(description = "父ID") Long parentId,
            @Parameter(description = "前端URL") String frontUrl,
            @Parameter(description = "后端URL") String backUrl,
            @Parameter(description = "层级") Integer level,
            @Parameter(description = "类型") Integer type) {
        return ResultVo.success(
                sysResourceService.add(name, description, parentId, frontUrl, backUrl, level, type),
                "添加权限成功"
        );
    }

    @PostMapping("/update")
    @Operation(summary = "修改权限")
    public ResultVo<Boolean> update(
            @Parameter(description = "权限ID") Long id,
            @Parameter(description = "权限名称") String name,
            @Parameter(description = "描述") String description,
            @Parameter(description = "父ID") Long parentId,
            @Parameter(description = "前端URL") String frontUrl,
            @Parameter(description = "后端URL") String backUrl,
            @Parameter(description = "层级") Integer level,
            @Parameter(description = "类型") Integer type) {
        return ResultVo.success(
                sysResourceService.update(id, name, description, parentId, frontUrl, backUrl, level, type),
                "修改权限成功"
        );
    }

    @PostMapping("/del")
    @Operation(summary = "删除权限")
    public ResultVo<Boolean> del(@Parameter(description = "权限ID") Long id) {
        return ResultVo.success(sysResourceService.del(id), "删除权限成功");
    }

    @GetMapping("/getById")
    @Operation(summary = "根据ID获取权限")
    public ResultVo<SysResource> getById(@Parameter(description = "权限ID") Long id) {
        return ResultVo.success(sysResourceService.getById(id));
    }

    @GetMapping("/check")
    @Operation(summary = "检查字段唯一性")
    public ResultVo<Boolean> check(
            @Parameter(description = "权限ID") Long id,
            @Parameter(description = "字段名") String field,
            @Parameter(description = "字段值") String value) {
        return ResultVo.success(sysResourceService.check(id, field, value));
    }

    @GetMapping("/getByUserId")
    @Operation(summary = "根据用户ID获取权限")
    public ResultVo<List<SysResource>> getByUserId(@Parameter(description = "用户ID") Long userId) {
        return ResultVo.success(sysResourceService.getByUserId(userId));
    }
}