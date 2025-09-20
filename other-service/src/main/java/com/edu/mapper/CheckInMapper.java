package com.edu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.common.entity.CheckIn;

import java.util.List;


public interface CheckInMapper extends BaseMapper<CheckIn> {
    List<CheckIn> list();
}
