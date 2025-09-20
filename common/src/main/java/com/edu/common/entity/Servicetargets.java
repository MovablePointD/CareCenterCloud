package com.edu.common.entity;

import com.edu.common.core.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 服务对象
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-30
 */
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Servicetargets extends BaseEntity {

    public Servicetargets(Long id, Boolean status) {
        super(id);
        this.status = status;
    }

    public Servicetargets(Long sid, String name, String phone, String floor, String notes, String time, String toname) {
        this.Sid = sid;
        this.name = name;
        this.phone = phone;
        this.floor = floor;
        this.notes = notes;
        this.time = time;
        this.toname = toname;

    }

    public Servicetargets(Long id, Long sid, String name, String phone, String floor, String notes, String time, String toname) {
        super(id);
        this.Sid = sid;
        this.name = name;
        this.phone = phone;
        this.floor = floor;
        this.notes = notes;
        this.time = time;
        this.toname = toname;

    }

    private static final long serialVersionUID = 1L;


    private Long Sid;


    private String name;

    private String phone;

    private String floor;


    private String notes;


    private String time;


    private Boolean status;


    private String toname;

}
