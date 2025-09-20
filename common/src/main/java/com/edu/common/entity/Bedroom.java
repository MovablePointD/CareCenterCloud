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
 * @author ylx
 * @since 2024-08-17
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Bedroom extends BaseEntity {

    private static final long serialVersionUID = 1L;

    public Bedroom(Long id, String status) {
        super(id);
        this.status = status;
    }

    public String bedid;

    public String peoplename;

    public String status;
    public  Integer peopleid;

}
