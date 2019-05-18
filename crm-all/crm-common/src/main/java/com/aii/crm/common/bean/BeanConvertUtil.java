package com.aii.crm.common.bean;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.collections4.CollectionUtils;

public class BeanConvertUtil {

	private BeanConvertUtil() {
	}

	public static <T, E> List<T> listConversion(List<E> beanList, Class<T> clazz) throws IllegalAccessException, InstantiationException, InvocationTargetException {
		List<T> resultList = new ArrayList<>();
		if (CollectionUtils.isNotEmpty(beanList)) {
			for (E e : beanList) {
				T t = clazz.newInstance();
				BeanUtils.copyProperties(e, t);
				resultList.add(t);
			}
		}
		return resultList;
	}

	public static <T, E> T beanConversion(E bean, Class<T> clazz) throws IllegalAccessException,
			InstantiationException, InvocationTargetException {
		if (bean != null) {
			T t = clazz.newInstance();
			BeanUtils.copyProperties(bean, t);
			return t;
		}
		return null;
	}

}
