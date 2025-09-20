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
 * @author zhaojie
 * @since 2024-09-02
 */
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Lifereminder extends BaseEntity {

    private static final long serialVersionUID = 1L;


    private String name;

    private String phone;

    private String rememberthing;

    private String thingtime;

    private String status;

    private String  remerbertime;


    public Lifereminder(String name, String phone, String rememberthing, String thingtime) {
        this.name=name;
        this.phone=phone;
        this.rememberthing=rememberthing;
        this.thingtime=thingtime;
        this.status="未提醒";
    }
}
