package com.edu.common.entity;

import com.edu.common.core.BaseEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 膳食统计
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-29
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dietarystatistics extends BaseEntity {

    public Dietarystatistics(Long id, String name, String days, String breakfast, String lunch, String dinner) {
        super(id);
        this.name = name;
        this.days = days;
        this.breakfast = breakfast;
        this.lunch = lunch;
        this.dinner = dinner;

    }

    private static final long serialVersionUID = 1L;


    private String name;


    private String days;


    private String breakfast;


    private String lunch;


    private String dinner;


}
