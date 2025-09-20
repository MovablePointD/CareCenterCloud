package com.edu.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.edu.common.entity.Busroute;
import com.edu.service.BusrouteService;
import com.edu.common.vo.ResultVo;
import io.minio.errors.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhaojie
 * @since 2024-09-02
 */
@RestController
@RequestMapping("/busroute")
public class BusrouteController {
    @Resource
    BusrouteService busrouteService;
    @GetMapping("/list")
    ResultVo<Page<Busroute>> list(Integer pageNo, Integer pageSize) throws InterruptedException {

        return  ResultVo.success(busrouteService.page(new Page<>(pageNo, pageSize))) ;

    }
    @PostMapping("/add")
    ResultVo<Boolean> add(String name, String bustime, String route) throws InterruptedException, ServerException, InsufficientDataException, ErrorResponseException, IOException, NoSuchAlgorithmException, InvalidKeyException, InvalidResponseException, XmlParserException, InternalException {


        String localTime = toLocalTime(bustime).toString();

        return ResultVo.success(busrouteService.add(name, localTime, route), "添加班车成功") ;
    }
    public static LocalTime toLocalTime(String timeStr) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
        return LocalTime.parse(timeStr, formatter);
    }


    @PostMapping("/update")
    ResultVo<Boolean> update(Integer id, String name, String bustime, String route) {

        String localTime = toLocalTime(bustime).toString();
        return ResultVo.success(busrouteService.update(id, name, localTime,route), "修改班车成功");
    }
    @PostMapping("/del")
    ResultVo<Boolean> del(Integer id) {

        return ResultVo.success(busrouteService.del(id),  "班车删除成功");
    }
}
