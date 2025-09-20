package com.edu.common.entity;

import com.edu.common.core.BaseEntity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * <p>
 * 
 * </p>
 *
 * @author zhaojie
 * @since 2024-09-02
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Busroute extends BaseEntity {

    private static final long serialVersionUID = 1L;


    private String name;


    private String bustime;


    private String route;


}
