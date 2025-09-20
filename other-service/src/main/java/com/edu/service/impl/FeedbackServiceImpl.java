package com.edu.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.edu.common.entity.Feedback;
import com.edu.mapper.FeedbackMapper;
import com.edu.service.FeedbackService;
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
public class FeedbackServiceImpl extends ServiceImpl<FeedbackMapper, Feedback> implements FeedbackService {
@Resource
FeedbackMapper feedbackMapper;
    @Override
    public Boolean check(Long id, String field, String value) {
        QueryWrapper<Feedback> wrapper = new QueryWrapper<>();
        wrapper.eq(field, value);
        System.out.println(id);
        if (null != id) {
            wrapper.ne("id", id);
        }
        return this.count(wrapper) == 0;
    }

    @Override
    public Boolean add(String name, String sex, String thing, String ntime, String memo, String status) {
        return this.save(new Feedback(name,sex,thing,ntime,memo,status));
    }

    @Override
    public Integer updatememo(String content, Integer id, String people) {
        UpdateWrapper<Feedback> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("id", id)
                .set("content", content).set("people",people).set("status","已处理");

        // 执行更新操作
        ;

        return   feedbackMapper.update(null, updateWrapper);
    }

    @Override
    public Boolean del(Integer id) {
        return feedbackMapper.deleteById(id)>0;
    }
}
