package com.edu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.common.entity.Lccontrast;
import com.edu.common.entity.Tem;
import com.edu.common.entity.Temp;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-15
 */

public interface LccontrastMapper extends BaseMapper<Lccontrast> {

    List<Tem> getbyID(Integer id) ;


     List<Temp> selectFullJoinData(Integer lid);
}
