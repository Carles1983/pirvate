package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class HttpClient implements Serializable {
    private String cfgHttpClientCode;
    private String urlAddress;
    private String requestHeader;
    private String responseType;
    private Long timeoutSeconds;
    private String state;
    private String remarks;
}