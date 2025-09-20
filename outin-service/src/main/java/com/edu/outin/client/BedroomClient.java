package com.edu.outin.client;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.edu.common.entity.Bedroom;
import com.edu.common.vo.ResultVo;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;


@FeignClient(name = "bedroom-service")
public interface BedroomClient {

    @PostMapping("/bedroom/inner/update")
    ResultVo<Boolean> update(Wrapper<Bedroom> bedroom) ;
}
