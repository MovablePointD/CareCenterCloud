package com.edu.controller;

import com.edu.common.entity.Mealtype;
import com.edu.common.vo.ResultVo;
import com.edu.service.MealtypeService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;


/**
 * <p>
 * 菜品类型表 前端控制器
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-26
 */
@RestController
@RequestMapping("/mealtype")
public class MealtypeController {
    @Resource
    MealtypeService mealtypeService;

    @GetMapping("/type")
    //  @ApiOperation("分页查询管理员列表")
    //  @ApiImplicitParams({
    //  @ApiImplicitParam(name = "pageNo", value = "页号", required = true),
    //  @ApiImplicitParam(name = "pageSize", value = "页大小", required = true)
    //    })
    ResultVo<List<Mealtype>> list() throws InterruptedException {
        return ResultVo.success(mealtypeService.list());
    }
}

