package com.edu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.edu.common.entity.Customcontent;
import com.edu.common.entity.Nurse;
import com.edu.common.entity.Nursecontent;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-20
 */
public interface CustomcontentService extends IService<Customcontent> {

    List<Customcontent> getlist(Integer cuid);

    Boolean update(Integer cuid, Integer cid, String executecycle, String executenub);

    List<Nursecontent> getcontent(Integer cuid);

    List<Nurse> getnurse();

    Customcontent getByccId(Integer cuid, Integer cid);



    List<Nurse> getallcontent( );
}
