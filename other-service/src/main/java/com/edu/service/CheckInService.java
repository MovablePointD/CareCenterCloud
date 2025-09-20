package com.edu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.edu.common.entity.CheckIn;

import java.util.List;

public interface CheckInService extends IService<CheckIn> {
    List<CheckIn> list();
    boolean add(String customername,Integer customerage,Integer customersex,String idcard,String roomid,String buildingid,String recordid,Integer eldertype,String checkindate,String expirationdate,String contacttel,String remarks,String nursingLevel);
    boolean del(Long id,Boolean delflag);
    boolean check(String value);
    Boolean checkoutbanli(String recordid, Integer checkouttype, String checkoutreason, String checkoutdate, String asktime, String checkoutremarks);
    Boolean goOutbanli(String recordid, String gooutreason, String goouttime, String wantbacktime, String companions, String relationship, String companionstel, String gooutremarks) ;

}
