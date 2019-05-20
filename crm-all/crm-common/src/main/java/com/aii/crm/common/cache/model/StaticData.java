package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class StaticData implements Serializable {
    private String codeType;
    private String codeValue;
    private String codeName;
    private String codeDesc;
    private String codeTypeAlias;
    private Short sortId;
    private String state;
    private String externCodeType;
    private String allowAdmin;
    private String resKey;
}