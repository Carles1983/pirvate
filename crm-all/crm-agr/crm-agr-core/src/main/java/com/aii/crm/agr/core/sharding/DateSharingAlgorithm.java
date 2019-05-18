package com.aii.crm.agr.core.sharding;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;
import org.apache.shardingsphere.api.sharding.standard.RangeShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.RangeShardingValue;

import com.google.common.collect.Range;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class DateSharingAlgorithm implements PreciseShardingAlgorithm<Date>, RangeShardingAlgorithm<Comparable<Date>> {

	@Override
	public String doSharding(Collection<String> availableTargetNames, PreciseShardingValue<Date> shardingValue) {
		String tableName = shardingValue.getLogicTableName();
		Date createDate = new Date(System.currentTimeMillis());
		DateFormat sdf = new SimpleDateFormat("yyyyMM");
		String dateFormatter = sdf.format(createDate);
		return tableName + "_" + dateFormatter;
	}

	@Override
	public Collection<String> doSharding(Collection<String> availableTargetNames,
			RangeShardingValue<Comparable<Date>> shardingValue) {
		String tableName = shardingValue.getLogicTableName();
		Range<Comparable<Date>> valueRange = shardingValue.getValueRange();
		String upperDate = null;
		String lowerDate = null;
		if(valueRange.hasUpperBound()) {
			upperDate = valueRange.upperEndpoint().toString();
		}
		if(valueRange.hasLowerBound()) {
			lowerDate = valueRange.lowerEndpoint().toString();
		}
		Collection<String> tables = null;
		try {
			tables = getMonthBetween(tableName, lowerDate, upperDate);
		} catch (ParseException e) {
			
			log.error(e.getMessage(), e);
		}
		return tables;
	}
	
	private List<String> getMonthBetween(String tableName, String minDate, String maxDate) throws ParseException {
		 List<String> result = new ArrayList<String>();
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 SimpleDateFormat sdfYearMonth = new SimpleDateFormat("yyyyMM");
		 
		 Calendar min = Calendar.getInstance();
		 Calendar max = Calendar.getInstance();
		 min.setTime(sdf.parse(minDate));
		 min.set(min.get(Calendar.YEAR), min.get(Calendar.MONTH), 1);
		 max.setTime(sdf.parse(maxDate));
		 max.set(max.get(Calendar.YEAR), max.get(Calendar.MONTH), 2);

		 Calendar curr = min;
		 while (curr.before(max)) {
			 result.add(tableName + "_" + sdfYearMonth.format(curr.getTime()));
			 curr.add(Calendar.MONTH, 1);
		 }
		 return result;
	}

}
