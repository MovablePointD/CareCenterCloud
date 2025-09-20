package com.edu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.common.entity.Customcontent;
import com.edu.common.entity.Nurse;
import com.edu.common.entity.Nursecontent;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-20
 */
public interface CustomcontentMapper extends BaseMapper<Customcontent> {

    List<Customcontent> getlist(Integer cuid);

    List<Nursecontent> getcontent(Integer cuid);

    List<Nurse> getnurse();

    Customcontent getByccId(@Param("cuid") Integer cuid, @Param("cid") Integer cid);


    List<Nurse> getallcontent();
}
