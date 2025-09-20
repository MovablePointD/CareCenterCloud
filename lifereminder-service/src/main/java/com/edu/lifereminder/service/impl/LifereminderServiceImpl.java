package com.edu.lifereminder.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.edu.common.entity.Lifereminder;
import com.edu.lifereminder.mapper.LifereminderMapper;
import com.edu.lifereminder.service.LifereminderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhaojie
 * @since 2024-09-02
 */
@Service
public class LifereminderServiceImpl extends ServiceImpl<LifereminderMapper, Lifereminder> implements LifereminderService {
@Resource
LifereminderMapper lifereminderMapper;
    @Override
    public Boolean check(Long id, String field, String value) {
        QueryWrapper<Lifereminder> wrapper = new QueryWrapper<>();
        wrapper.eq(field, value);
        System.out.println(id);
        if (null != id) {
            wrapper.ne("id", id);
        }
        return this.count(wrapper) == 0;
    }

    @Override
    public Boolean add(String name, String phone, String rememberthing, String thingtime) {
        return this.save(new Lifereminder(name,phone,rememberthing,thingtime));
    }

    @Override
    public Boolean del(Integer id) {
        return lifereminderMapper.deleteById(id)>0;
    }


}
