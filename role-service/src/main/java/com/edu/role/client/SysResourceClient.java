package com.edu.role.client;


import com.edu.common.entity.SysResource;
import com.edu.common.vo.ResultVo;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@FeignClient(name = "sysresource-service")
public interface SysResourceClient {

    @GetMapping("/sysResource/list")
    @Operation(summary = "获取权限列表")
    public ResultVo<List<SysResource>> getList() ;

}
