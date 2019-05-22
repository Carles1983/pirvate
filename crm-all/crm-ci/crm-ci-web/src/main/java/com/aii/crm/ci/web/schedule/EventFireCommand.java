package com.aii.crm.ci.web.schedule;


import com.aii.crm.ci.web.constant.CiWebConstant;
import com.aii.crm.ci.web.context.CiApplicationContext;
import com.aii.crm.ci.web.dto.req.CiInteractionAttrValueReqDto;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.persistence.bo.CiInteraction;
import com.aii.crm.ci.web.service.atom.interfaces.IInteractionAtomSV;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EventFireCommand implements Runnable {

	private final static Logger log = LoggerFactory.getLogger(EventFireCommand.class);

	private CiInteractionReqDto interaction;
	private List<CiInteractionAttrValueReqDto> attrs;
	private long retryTimes = 0;
	private long fireInterval;

	EventFireCommand(CiInteractionReqDto interactionValue, List<CiInteractionAttrValueReqDto> attrValue,
					 long fireInterval,
					 long retryTimes) {
		this.interaction = interactionValue;
		this.attrs = attrValue;
		this.retryTimes = retryTimes;
		this.fireInterval = fireInterval;
	}

	public void run() {
		try {
			if (EventFireSender.fireEvent(interaction, attrs)) {
				updateInteraction(interaction.getInteractionId());
			} else {
				retryFireEvent();
			}
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			retryFireEvent();
		}
	}

	private void retryFireEvent() {
		if (--retryTimes > 0) {
			try {
				EventFireSchedule.startFire(interaction, attrs, fireInterval, retryTimes, false);
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
		} else {
			try {
				updateInteraction(interaction.getInteractionId());
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
		}
	}

	private void updateInteraction(Long interactionId){
		IInteractionAtomSV interactionAtomSV = CiApplicationContext.getService(IInteractionAtomSV.class);
		CiInteraction interactionBean =
				interactionAtomSV.getInteractionByPrimaryKey(interactionId);
		if (interactionBean != null) {
			interactionBean.setEventState(CiWebConstant.EVENT_STATE_SEND_OK);
			interactionAtomSV.updateInteraction(interactionBean);
		}
	}
}
