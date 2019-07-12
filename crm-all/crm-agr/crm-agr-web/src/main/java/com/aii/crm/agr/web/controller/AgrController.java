package com.aii.crm.agr.web.controller;

import com.aii.crm.agr.web.dto.req.AgrDataReqDto;
import com.aii.crm.agr.web.dto.res.AgrDataResDto;
import com.aii.crm.common.exception.CrmCheckedException;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: soane
 * @Date: 2019/6/7
 * @Time: 11:40
 * @Description: TODO
 */
@RestController
@RequestMapping("/agr")
@Slf4j
public class AgrController {

	@RequestMapping(value = "/preview", method = RequestMethod.POST)
	public List<AgrDataResDto> previewAgreement(@RequestBody AgrDataReqDto agrDataReqDto) throws CrmCheckedException {
		if(paramVerify(agrDataReqDto)){
			throw new CrmCheckedException("illegalArguments", new Exception("eee"));
		}



		return null;
	}


	private boolean paramVerify(AgrDataReqDto agrDataReqDto){
		if(agrDataReqDto == null || agrDataReqDto.getOrderCustomerId() == null || agrDataReqDto.getCustId() == null || agrDataReqDto.getCustType() == null){
			return true;
		}
		return false;
	}


}
