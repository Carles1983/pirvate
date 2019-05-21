package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class ExCode implements Serializable {
    private String exceptionCodeType;
    private String exceptionParentCode;
    private String description;
    private String resKey;
    private String state;
}