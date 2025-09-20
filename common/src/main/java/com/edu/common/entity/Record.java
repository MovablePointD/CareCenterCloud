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
 * @since 2024-08-21
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Record {


    private String name;
    private  String content;
    private Long cuid;

    private Long cid;

    private String date;

    private  String nursepeople;
    private  Long nurseid;



}
