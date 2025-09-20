package com.edu.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.edu.common.core.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 角色和权限关联表
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-21
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("role_resource")

public class RoleResource extends BaseEntity {

    private static final long serialVersionUID = 1L;


    private Long roleId;

    private Long resourceId;


    private Integer type;


}
