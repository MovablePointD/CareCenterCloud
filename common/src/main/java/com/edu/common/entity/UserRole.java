package com.edu.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.edu.common.core.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-21
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("user_role")

public class UserRole extends BaseEntity {

    private static final long serialVersionUID = 1L;


    private Long userId;


    private Long roleId;


}
