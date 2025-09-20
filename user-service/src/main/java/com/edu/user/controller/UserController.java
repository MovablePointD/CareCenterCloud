package com.edu.user.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.edu.common.entity.User;
import com.edu.user.service.UserService;
import com.edu.common.util.JwtUtil;
import com.edu.common.vo.LoginVO;
import com.edu.common.vo.ResultVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author limengya
 * @since 2024-08-14
 */
@RestController
@RequestMapping("/user")
@Tag(name = "用户管理接口") // ✅ 替代 @Api(tags = "...")
public class UserController {

    @Resource
    UserService userService;

    @GetMapping("/list")
    @Operation(summary = "分页查询管理员列表") // ✅ 替代 @ApiOperation
    public ResultVo<IPage<User>> list(
            @Parameter(description = "页号", required = true) Integer pageNo, // ✅ 替代 @ApiImplicitParam
            @Parameter(description = "页大小", required = true) Integer pageSize) {
        return ResultVo.success(userService.page(new Page<>(pageNo, pageSize)));
    }

    @GetMapping("/type")
    public ResultVo<List<User>> list() throws InterruptedException {
        return ResultVo.success(userService.list());
    }

    @PostMapping("/add")
    @Operation(summary = "添加管理员")
    public ResultVo<String> add(
            @Parameter(description = "姓名") String name,
            @Parameter(description = "性别") Integer sex,
            @Parameter(description = "生日") String birthday,
            @Parameter(description = "类型") String type,
            @Parameter(description = "工作时间") String worktime,
            @Parameter(description = "简介") String introduction,
            @Parameter(description = "电话") String phone,
            @Parameter(description = "邮箱") String email,
            @Parameter(description = "密码") String password) {
        return ResultVo.success(
                JwtUtil.create(userService.add(name, sex, birthday, type, worktime, introduction, phone, email, password)),
                "添加管理员成功"
        );
    }

    @GetMapping("/check")
    public ResultVo<Boolean> check(
            @Parameter(description = "用户ID") Long id,
            @Parameter(description = "字段名") String field,
            @Parameter(description = "字段值") String value) {
        return ResultVo.success(userService.check(id, field, value));
    }

    @GetMapping("/getById")
    public ResultVo<User> getById(@Parameter(description = "用户ID") Long id) {
        return ResultVo.success(userService.getById(id));
    }

    @PostMapping("/update")
    @Operation(summary = "修改管理员")
    public ResultVo<Boolean> update(
            @Parameter(description = "用户ID") Long id,
            @Parameter(description = "姓名") String name,
            @Parameter(description = "性别") Integer sex,
            @Parameter(description = "生日") String birthday,
            @Parameter(description = "类型") String type,
            @Parameter(description = "工作时间") String worktime,
            @Parameter(description = "简介") String introduction,
            @Parameter(description = "电话") String phone,
            @Parameter(description = "邮箱") String email) {
        return ResultVo.success(
                userService.update(id, name, sex, birthday, type, worktime, introduction, phone, email),
                "修改管理员成功"
        );
    }

    @PostMapping("/del")
    @Operation(summary = "删除/启用管理员")
    public ResultVo<Boolean> del(
            @Parameter(description = "用户ID") Long id,
            @Parameter(description = "状态 true=启用 false=禁用") Boolean status) {
        return ResultVo.success(
                userService.delete(id, status),
                status ? "启用管理员成功" : "禁用管理员成功"
        );
    }

    @PostMapping("/login")
    @Operation(summary = "用户登录")
    public ResultVo<LoginVO> login(
            @Parameter(description = "用户名") String username,
            @Parameter(description = "密码") String password) {
        System.out.println(username);
        System.out.println(password);

        return ResultVo.success(userService.login(username, password));
    }

    @PostMapping("/change")
    @Operation(summary = "修改密码")
    public ResultVo<String> change(
            @Parameter(description = "邮箱") String email,
            @Parameter(description = "新密码") String password) {
        return ResultVo.success(JwtUtil.create(userService.change(email, password)));
    }
}