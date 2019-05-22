package com.aii.crm.ci.web.schedule;

import com.aii.crm.ci.web.dto.req.CiInteractionAttrValueReqDto;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class EventFireSchedule {

	private static ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(20);

	public static void startFire(CiInteractionReqDto interactionValue, List<CiInteractionAttrValueReqDto> attrValue,
								 long fireInterval, long retryTimes, boolean first) {
		if (interactionValue == null) {
			return;
		}

		if (fireInterval <= 0) {
			fireInterval = 30;
		}

		if (first) {
			scheduler.schedule(new EventFireCommand(interactionValue, attrValue, fireInterval, retryTimes), 0, TimeUnit.SECONDS);
		} else {
			scheduler.schedule(new EventFireCommand(interactionValue, attrValue, fireInterval, retryTimes), fireInterval, TimeUnit.SECONDS);
		}
	}
}
