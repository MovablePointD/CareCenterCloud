package com.edu.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.edu.common.entity.Tem;
import com.edu.common.entity.Customcontent;
import com.edu.common.entity.Nursingrecords;
import com.edu.mapper.LccontrastMapper;
import com.edu.mapper.NursingrecordsMapper;
import com.edu.service.CustomcontentService;
import com.edu.service.NursingrecordsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-09
 */
@Service
public class NursingrecordsServiceImpl extends ServiceImpl<NursingrecordsMapper, Nursingrecords> implements NursingrecordsService {
@Resource
NursingrecordsMapper nursingrecordsMapper;
@Resource
CustomcontentService customcontentService;
@Resource
LccontrastMapper lccontrastMapper;
    @Override
    public Boolean add(String name, Integer sex, String birthday, Integer nurselevel) {
        Nursingrecords nur=new Nursingrecords(name,sex,birthday,nurselevel);
        int bl= nursingrecordsMapper.insert(nur);
        Long id= nur.getId();
       List<com.edu.common.entity.Tem> ls=lccontrastMapper.getbyID(nurselevel);
        for (Tem tem : ls) {
            customcontentService.save(new Customcontent(id, tem.getCid(), tem.getExecutecycle(),tem.getExecutenub())) ;
        }
        return bl>0;
    }

}
