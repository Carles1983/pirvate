package com.ai.rocket.domain;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * @author: soane
 * @Date: 2019/7/11
 * @Time: 10:04
 * @Description: TODO
 */
@Data
public class LogDomain implements Serializable {
	private String appname;
	private String classline;
	private Date datetime;
	private String host;
	private String thread;
	private String level;
	private String traceIndex;
	private String msg;
}
