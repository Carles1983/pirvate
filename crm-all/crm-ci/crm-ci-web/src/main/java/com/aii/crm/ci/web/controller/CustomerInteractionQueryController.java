package com.aii.crm.ci.web.controller;

import com.aii.crm.ci.web.dto.res.CiInteractionResDto;
import com.aii.crm.common.page.PageResult;
import com.github.pagehelper.Page;
import java.util.Date;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ci")
@Slf4j
public class CustomerInteractionQueryController {

	@RequestMapping(value = "/interaction", method = RequestMethod.GET)
	public PageResult<CiInteractionResDto> listInteractionPage(@RequestParam Date startTime, @RequestParam Date endTime,
															   @RequestParam String queryType,
															   @RequestParam String customerId) {
		return null;
	}
}
