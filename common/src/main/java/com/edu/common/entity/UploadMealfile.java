package com.edu.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.edu.common.core.BaseEntity;
import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

/**
 * <p>
 * 文件表
 * </p>
 *
 * @author limengya
 * @since 2024-08-08
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("upload_mealflie")
public class UploadMealfile extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * md5
     */
    private String md5;

    /**
     * 文件大小
     */
    private Long size;

    /**
     * 文件类型
     */
    private String contentType;

    /**
     * 路径
     */
    private String path;


}
