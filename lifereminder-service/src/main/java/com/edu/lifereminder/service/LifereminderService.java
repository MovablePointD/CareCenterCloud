package com.edu.lifereminder.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.edu.common.entity.Lifereminder;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhaojie
 * @since 2024-09-02
 */
public interface LifereminderService extends IService<Lifereminder> {

    Boolean check(Long id, String field, String value);

    Boolean add(String name, String phone, String rememberthing, String thingtime);

    Boolean del(Integer id);
}
