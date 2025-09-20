package com.edu.common.vo;

import com.edu.common.entity.RoleResource;
import com.edu.common.entity.SysResource;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class RoleResourceVO {
    private List<SysResource> resourcesList;
    private List<RoleResource> roleResourceList;
}
