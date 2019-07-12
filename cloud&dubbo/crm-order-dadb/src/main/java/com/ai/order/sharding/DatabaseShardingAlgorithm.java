package com.ai.order.sharding;

import java.util.Collection;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;

/**
 * @author: soane
 * @Date: 2019/7/8
 * @Time: 12:03
 * @Description: TODO
 */
public class DatabaseShardingAlgorithm implements PreciseShardingAlgorithm<Long> {
	@Override
	public String doSharding(Collection<String> collection, PreciseShardingValue<Long> preciseShardingValue) {
		String databaseName = "ds";
		Long value = preciseShardingValue.getValue();
		if(value != null){
			long modValue = value % 2;
			return databaseName + modValue;
		}
		return databaseName;
	}
}
