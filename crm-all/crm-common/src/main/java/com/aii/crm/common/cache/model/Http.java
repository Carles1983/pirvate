package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class Http implements Serializable {
    private String cfgHttpCode;
    private String httpGrp;
    private String httpDesc;
    private String state;
    private String remarks;
}