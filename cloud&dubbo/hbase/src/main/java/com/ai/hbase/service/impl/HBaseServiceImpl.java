package com.ai.hbase.service.impl;

import com.ai.hbase.mapper.OrdMapper;
import com.ai.hbase.mapper.domain.OrdCust;
import com.ai.hbase.service.HBaseService;
import java.io.IOException;
import lombok.extern.slf4j.Slf4j;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.Table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.hadoop.hbase.HbaseTemplate;
import org.springframework.stereotype.Service;

/**
 * @author: soane
 * @Date: 2019/7/11
 * @Time: 19:40
 * @Description: TODO
 */
@Service
@Slf4j
public class HBaseServiceImpl implements HBaseService {

	@Autowired
	private HbaseTemplate hbaseTemplate;

	@Override
	public String getOrdCust(String table) {
		String result = "";
		OrdCust ordCust = hbaseTemplate.get("ord", "ord-cust-002", new OrdMapper());
		result = ordCust.toString();
		return result;
	}
}
