package com.edu.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.edu.common.entity.CheckIn;
import com.edu.common.entity.Customcontent;
import com.edu.mapper.CheckInMapper;
import com.edu.mapper.LccontrastMapper;
import com.edu.service.CheckInService;
import com.edu.service.CustomcontentService;
import com.edu.common.entity.Tem;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CheckInServiceImpl extends ServiceImpl<CheckInMapper,CheckIn> implements CheckInService {
    @Resource
    CheckInMapper checkInMapper;
    @Override
    public List<CheckIn> list() {
        return checkInMapper.list();
    }

    @Resource
    LccontrastMapper lccontrastMapper;
    @Resource
    CustomcontentService customcontentService;
    @Override
    public boolean add(String customername, Integer customerage, Integer customersex, String idcard, String roomid, String buildingid, String recordid, Integer eldertype, String checkindate, String expirationdate, String contacttel, String remarks,String nursingLevel){
        CheckIn checkIn = new CheckIn(
                 customername, customerage, customersex, idcard, roomid, buildingid, recordid, eldertype, checkindate, expirationdate, contacttel, remarks,nursingLevel
        );

        int bl= checkInMapper.insert(checkIn);
        Long id= checkIn.getId();
        List<Tem> ls=lccontrastMapper.getbyID(Integer.valueOf(nursingLevel));
        for (Tem tem : ls) {
            customcontentService.save(new Customcontent(id, tem.getCid(), tem.getExecutecycle(),tem.getExecutenub())) ;
        }
        return bl>0;

    }
    @Override
    public boolean del(Long id,Boolean delflag)
    {
        return this.updateById(new CheckIn(id,delflag));
    }
    @Override
    public boolean check(String value){
        QueryWrapper<CheckIn> wrapper = new QueryWrapper<>();
        wrapper.eq("recordid", value);
        return this.count(wrapper)==0;
    }

    @Override
    public Boolean checkoutbanli(String recordid, Integer checkouttype, String checkoutreason, String checkoutdate, String asktime, String checkoutremarks) {
        UpdateWrapper<CheckIn> wrapper = new UpdateWrapper<>();
        wrapper.eq("recordid", recordid);
        wrapper.set("checkouttype", checkouttype);
        wrapper.set("checkoutreason", checkoutreason);
        wrapper.set("checkoutdate", checkoutdate);
        wrapper.set("asktime", asktime);
        wrapper.set("status",0);
        wrapper.set("checkoutremarks", checkoutremarks);
        this.update(wrapper);
        return this.count(wrapper)==0;
    }
@Override
    public Boolean goOutbanli(String recordid, String gooutreason, String goouttime, String wantbacktime, String companions, String relationship, String companionstel, String gooutremarks){
    UpdateWrapper<CheckIn> wrapper = new UpdateWrapper<>();
    wrapper.eq("recordid", recordid);
    wrapper.set("gooutreason", gooutreason);
    wrapper.set("goouttime", goouttime);
    wrapper.set("wantbacktime", wantbacktime);
    wrapper.set("companions", companions);
    wrapper.set("relationship", relationship);
    wrapper.set("companionstel", companionstel);
    wrapper.set("gooutremarks", gooutremarks);
    wrapper.set("gooutstatus",0);
    this.update(wrapper);
    return this.count(wrapper)==0;

}

}
