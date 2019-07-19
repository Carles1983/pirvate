package com.ai.hbase.service;

/**
 * @author: soane
 * @Date: 2019/7/11
 * @Time: 19:40
 * @Description: TODO
 */
public interface HBaseService {
	String getOrdCust(String table);

	String deleteOrdCust(String table);
}
