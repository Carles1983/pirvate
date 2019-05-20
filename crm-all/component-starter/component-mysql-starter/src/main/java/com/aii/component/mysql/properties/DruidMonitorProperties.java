package com.aii.component.mysql.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@ConfigurationProperties(prefix = "jdbc.monitor")
public class DruidMonitorProperties {

	private String DruidStatView;
	private String DruidWebStatFilter;

	private String allow;
	private String deny;
	private String loginUsername;
	private String loginPassword;

	private String exclusions;
	private String resetEnable;

}
