package com.edu.common.entity;

import com.edu.common.core.BaseEntity;
import lombok.*;

/**
 * <p>
 * 
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-09
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Nursingrecords extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private String name;

    private Integer sex;

    private String birthday;

  //  private String bed;

    private Integer nursingLevel;

//    private String nursingContent;

//    private Integer executecycle;
//    private Integer executenub;


}
