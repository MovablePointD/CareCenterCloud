package com.edu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.edu.common.entity.Nursingrecords;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-09
 */
public interface NursingrecordsService extends IService<Nursingrecords> {


    Boolean add(String name, Integer sex, String birthday, Integer nurselevel);
}
