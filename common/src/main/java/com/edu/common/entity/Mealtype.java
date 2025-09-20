package com.edu.common.entity;

import com.edu.common.core.BaseEntity;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 菜品类型表
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-26
 */
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Mealtype extends BaseEntity {

    private static final long serialVersionUID = 1L;


    private String mealtype;


}
