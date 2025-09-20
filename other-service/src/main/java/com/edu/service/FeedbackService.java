package com.edu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.edu.common.entity.Feedback;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhaojie
 * @since 2024-09-02
 */
public interface FeedbackService extends IService<Feedback> {

    Boolean check(Long id, String field, String value);

    Boolean add(String name, String sex, String thing, String ntime, String memo, String status);

    Integer updatememo(String content, Integer id, String people);

    Boolean del(Integer id);
}
