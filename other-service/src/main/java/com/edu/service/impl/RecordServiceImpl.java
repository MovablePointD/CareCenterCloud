package com.edu.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.edu.common.entity.Record;
import com.edu.mapper.RecordMapper;
import com.edu.service.RecordService;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author mengxiang
 * @since 2024-08-21
 */
@Service
public class RecordServiceImpl extends ServiceImpl<RecordMapper, Record> implements RecordService {

    @Override
    public Boolean add(Long cuid, Long cid, String name, String content ,String nursepeople,Long nurseid) {
        return this.save(new Record(name,content,cuid,cid, LocalDateTime.now().toString(), nursepeople, nurseid));
    }
}
