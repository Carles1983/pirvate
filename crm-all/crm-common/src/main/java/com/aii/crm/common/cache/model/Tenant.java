package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class Tenant implements Serializable {
    private Long tId;
    private String tenantId;
    private String tenantCode;
    private String tenantName;
    private String preFlanguage;
    private Long currencyId;
    private String timezone;
    private String regionId;
    private String defaultCenter;
    private Long createOpId;
    private Long createOrgId;
    private Long opId;
    private Long orgId;
    private Long doneCode;
    private String state;
    private String remark;
}