package com.aii.crm.common.cache.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class I18nResource implements Serializable {
    private String resKey;
    private String languages;
    private String zhCn;
    private String targetLanguage;
    private String state;
    private String remarks;
    private String ext2;
    private String ext3;
    private String ext4;
    private String ext5;
    private String ext6;
    private String ext7;
}