package com.edu.common.vo;

import com.edu.common.entity.SysResource;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class LoginVO {
    private String token;
    private List<SysResource> menu;
}
