package com.aii.crm.common.time;

import java.util.Date;

public class TimesUtil {

	private TimesUtil(){}

	public static Date getDefaultTime(){
		return new Date(System.currentTimeMillis());
	}
}
