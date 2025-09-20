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

public class Feedback extends BaseEntity {

    private static final long serialVersionUID = 1L;


    private String name;


    private String sex;


    private String status;


    private String ntime;


    private String memo;


    private String people;


    private String content;


    private String thing;


    public Feedback(String name, String sex, String thing, String ntime, String memo, String status) {
        this.name=name;
        this.sex=sex;
        this.thing=thing;
        this.ntime=ntime;
        this.memo=memo;
        this.status=status;
    }
}
