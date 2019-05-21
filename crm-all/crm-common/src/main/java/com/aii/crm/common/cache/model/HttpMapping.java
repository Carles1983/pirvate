package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class HttpMapping implements Serializable {
    private Long mappingId;
    private String cfgHttpCode;
    private String mappingName;
    private String mappingValue;
    private String state;
    private String remarks;
}