package com.edu.common.entity;

import com.edu.common.core.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-13
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Nursecontent extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private String nursecontent;

    private String cdescribe;

    private Integer price;

    private String memo;

    private Integer status;


}
