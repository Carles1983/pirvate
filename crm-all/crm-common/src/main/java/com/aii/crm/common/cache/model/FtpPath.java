package com.aii.crm.common.cache.model;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class FtpPath implements Serializable {
    private String ftpPathCode;
    private String ftpCode;
    private String remotePath;
    private String remotePathHis;
    private String remotePathTemp;
    private String localPath;
    private String localPathHis;
    private String localPathTemp;
    private String remarks;
    private String state;
    private Date stateDate;
    private Date createdDate;
}