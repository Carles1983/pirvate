package com.ai.hbase.mapper;

import com.ai.hbase.mapper.domain.OrdCust;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.util.Bytes;
import org.springframework.data.hadoop.hbase.RowMapper;

/**
 * @author: soane
 * @Date: 2019/7/12
 * @Time: 16:37
 * @Description: TODO
 */
public class OrdMapper implements RowMapper<OrdCust> {

	private static byte[] FAMILY = "ord-cust".getBytes();
	private static byte[] NAME = "cust-name".getBytes();

	@Override
	public OrdCust mapRow(Result result, int rowNum) throws Exception {
		String name = Bytes.toString(result.getValue(FAMILY, NAME));
		OrdCust ordCust = new OrdCust();
		ordCust.setCustName(name);
		return ordCust;
	}
}
