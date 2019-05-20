package com.aii.crm.common.cache.model;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class ParaDetail implements Serializable {
    private String regionId;
    private String paraType;
    private String paraCode;
    private String paraName;
    private String para1;
    private String para2;
    private String para3;
    private String para4;
    private String para5;
    private String paraDesc;
    private String state;
    private Long opId;
    private Date stateDate;
    private String remarks;
}