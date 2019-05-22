package com.aii.crm.ci.web.schedule;

import com.aii.crm.common.exception.CrmCheckedException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public class ContactTimeSchedule {

	private static Map<Long, ScheduledExecutorService> channelCmdMap = new ConcurrentHashMap<>();
	private static transient final ReentrantLock lock = new ReentrantLock();

	public static void startCommand(long channelId, String key, long lastInteractTime, long timeout) throws CrmCheckedException {
		if (channelCmdMap.get(channelId) == null) {
			lock.lock();
			try {
				if (channelCmdMap.get(channelId) == null) {
					channelCmdMap.put(channelId, Executors.newScheduledThreadPool(10));
				}
			} finally {
				lock.unlock();
			}
		}

		ScheduledExecutorService scheduler = channelCmdMap.get(channelId);
		scheduler.schedule(new ContactTimeCalCommand(key, lastInteractTime), timeout, TimeUnit.MINUTES);
	}
}
