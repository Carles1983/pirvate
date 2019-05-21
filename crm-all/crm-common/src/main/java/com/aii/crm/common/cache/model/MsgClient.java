package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class MsgClient implements Serializable {
    private String cfgMsgControlCode;
    private String urlAddress;
    private Long httpConnections;
    private Long httpTimeout;
    private String state;
    private String remarks;
    private String channel;
    private String serverType;
    private String serverName;
    private String recordLog;
}