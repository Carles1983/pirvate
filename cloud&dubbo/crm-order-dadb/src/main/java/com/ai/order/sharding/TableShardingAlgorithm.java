package com.ai.order.sharding;

import com.google.common.collect.Range;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;
import org.apache.shardingsphere.api.sharding.standard.RangeShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.RangeShardingValue;

/**
 * @author: soane
 * @Date: 2019/7/8
 * @Time: 12:08
 * @Description: TODO
 */
public class TableShardingAlgorithm implements PreciseShardingAlgorithm<Long>,
		RangeShardingAlgorithm<Comparable<Long>> {

	@Override
	public String doSharding(Collection<String> collection, PreciseShardingValue<Long> preciseShardingValue) {
		String tableName = preciseShardingValue.getLogicTableName();
		Long value = preciseShardingValue.getValue();
		if(value != null){
			long modValue = value % 5;
			return tableName + "_" + modValue;
		}
		return tableName;
	}

	@Override
	public Collection<String> doSharding(Collection<String> collection, RangeShardingValue<Comparable<Long>> rangeShardingValue) {
		String tableName = rangeShardingValue.getLogicTableName();
		Range<Comparable<Long>> valueRange = rangeShardingValue.getValueRange();
		long start = Long.parseLong(valueRange.lowerEndpoint().toString());
		long end = Long.parseLong(valueRange.upperEndpoint().toString());
		Set<String> tables = new HashSet<>();
		for(long i = start; i< end; i++){
			long modValue = i%5;
			String table = tableName + "_" + modValue;
			if(!tables.contains(table)){
				tables.add(table);
			}
		}
		return tables;
	}
}
