package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class ClientTimeout implements Serializable {
    private String interfaceClassname;
    private String methodName;
    private Integer parameterCount;
    private String serverName;
    private Integer timeoutSecond;
    private String state;
    private String remarks;
}