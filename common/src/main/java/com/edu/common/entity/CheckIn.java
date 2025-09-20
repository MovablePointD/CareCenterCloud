package com.edu.common.entity;

import com.edu.common.core.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CheckIn extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;
 private String customername;
 private Integer customerage;
 private Integer customersex;
 private String idcard;
    private String roomid;
    private String buildingid;
    private String recordid;
    private Integer eldertype;
    private String checkindate;
    private String expirationdate;
    private String contacttel;
    private String remarks;
    private Boolean delflag;
    private String checkoutdate;
    private Integer checkouttype;
    private String checkoutreason;
    private Integer status;
    private String asktime ;
    private String auditopinion;
    private String auditperson;
    private String audittime ;
    private String checkoutremarks;
    private Boolean checkoutdelflag;
    private String gooutreason;
    private String goouttime ;
    private String wantbacktime ;
    private String truebacktime ;
    private String companions;
    private String relationship;
    private String companionstel;
    private String gooutauditperson;
    private String gooutaudittime;
    private String gooutremarks;
    private Integer gooutstatus;
   private  String nursingLevel;








    public CheckIn(Long id, Boolean delflag) {
        super(id);
        this.delflag=delflag;
    }
    public CheckIn(String customername, Integer customerage, Integer customersex, String idcard, String roomid, String buildingid, String recordid, Integer eldertype, String checkindate, String expirationdate, String contacttel, String remarks, String nursingLevel) {
        this.buildingid = buildingid;
        this.customername = customername;
        this.customerage = customerage;
        this.customersex = customersex;
        this.idcard = idcard;
        this.roomid = roomid;
        this.recordid = recordid;
        this.eldertype = eldertype;
        this.checkindate = checkindate;
        this.expirationdate = expirationdate;
        this.contacttel = contacttel;
        this.remarks = remarks;
        this.nursingLevel=nursingLevel;
    }
}
