package com.ai.hbase.configuration.properties;

import java.util.Map;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * @author: soane
 * @Date: 2019/7/12
 * @Time: 15:23
 * @Description: TODO
 */
@ConfigurationProperties(prefix = "hbase")
@Data
public class HBaseProperties {
	private Map<String, String> config;
}
