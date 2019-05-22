package com.aii.crm.ci.web.context;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class CiApplicationContext implements ApplicationContextAware {

	private static ApplicationContext applicationContext;

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		setCiApplicationContext(applicationContext);
	}

	private static void setCiApplicationContext(ApplicationContext applicationContext){
		CiApplicationContext.applicationContext = applicationContext;
	}

	/**
	 * 获取服务
	 *
	 * @param clazz
	 * @return
	 * @author
	 */
	public static <T> T getService(Class<T> clazz) {
		return applicationContext.getBean(clazz);
	}

}
