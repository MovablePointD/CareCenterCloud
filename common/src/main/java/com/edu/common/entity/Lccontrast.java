package com.edu.common.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-15
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Lccontrast{



    private Long lid;

    private Long cid;

    private Integer executecycle;

    private Integer executenub;

    private Integer sort;

    private String memo;


}
