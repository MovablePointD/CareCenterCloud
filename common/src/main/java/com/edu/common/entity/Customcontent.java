package com.edu.common.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

/**
 * <p>
 * 
 * </p>
 *
 * @author guangying
 * @since 2024-08-30
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customcontent {

    private Long cuid;

    private Long cid;

    private Integer executecycle;

    private Integer executenub;

    private Integer lastn;

    private Integer buy;

    private Integer sum;

    private Integer leftn;

    private LocalDate time;



    private String memo;

    public Customcontent(Long cuid, Long cid, Integer executecycle, Integer executenub)
    {
        this.cuid=cuid;
        this.cid=cid;
        this.executecycle=executecycle;
        this.executenub=executenub;
    }
}
