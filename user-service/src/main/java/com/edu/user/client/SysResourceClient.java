package com.edu.user.client;

import com.edu.common.entity.SysResource;
import com.edu.common.vo.ResultVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@FeignClient(name = "sysresource-service")
public interface SysResourceClient {

    @GetMapping("/sysresourse/getByUserId")
    @Operation(summary = "根据ID获取权限")
    public ResultVo<List<SysResource>> getByUserId(@Parameter(description = "权限ID") Long id) ;



}
