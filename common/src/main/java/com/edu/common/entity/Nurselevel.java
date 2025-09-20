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
 * @since 2024-08-12
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Nurselevel extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private String level;

    private Boolean status;

    private String memo;

}
