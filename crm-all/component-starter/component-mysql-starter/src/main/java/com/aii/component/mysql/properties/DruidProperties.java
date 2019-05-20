package com.aii.component.mysql.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@ConfigurationProperties(prefix = "jdbc")
public class DruidProperties {
	
	private String url;
    private String username;
    private String password;
    private String publicKey;
    private String driverClass;
    private String filters;
    private String connectionProperties;
    private String validationQuery;

    private Boolean testWhileIdle;
    private Boolean testOnBorrow;
    private Boolean testOnReturn;
    private Boolean poolPreparedStatements;

    private Integer maxWait;
    private Integer maxActive;
    private Integer minIdle;
    private Integer initialSize;
    private Integer timeBetweenEvictionRunsMillis;
    private Integer minEvictableIdleTimeMillis;
    private Integer maxPoolPreparedStatementPerConnectionSize;
	
}
