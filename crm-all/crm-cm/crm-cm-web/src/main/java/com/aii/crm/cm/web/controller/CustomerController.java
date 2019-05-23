package com.aii.crm.cm.web.controller;

import com.aii.crm.cm.web.dto.req.CustomerSearchReqDto;
import com.aii.crm.cm.web.dto.req.IndividualCustomerReqDto;
import com.aii.crm.cm.web.dto.res.CustomerInfoResDto;
import com.aii.crm.cm.web.dto.res.CustomerViewResDto;
import com.aii.crm.cm.web.dto.res.IndividualCustomerResDto;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cm")
public class CustomerController {

	/**
	 * eShop用
	 */
	@RequestMapping(value = "/individual/eShop", method = RequestMethod.POST)
	public Long saveIndividualPotentialCustomer(@RequestBody IndividualCustomerReqDto customerReqDto) {
		return null;
	}

	/**
	 * agentView用
	 */
	@RequestMapping(value = "/individual/agentView", method = RequestMethod.POST)
	public Long createIndividualCustomer(@RequestBody IndividualCustomerReqDto customerReqDto) {
		return null;
	}

	@RequestMapping(value = "/individual", method = RequestMethod.POST)
	public Long createIndividualPotentialCustomer(@RequestBody IndividualCustomerReqDto customerReqDto) {
		return null;
	}

	@RequestMapping(value = "/individual/{customerId}", method = RequestMethod.GET)
	public IndividualCustomerResDto getIndividualCustomer(@PathVariable Long customerId) {
		return null;
	}

	@RequestMapping(value = "/individual/validation/{certType}/{certCode}", method = RequestMethod.GET)
	public Long checkIndividualCustomer(@PathVariable Integer certType, @PathVariable String certCode) {
		return null;
	}

	@RequestMapping(value = "/individual/{customerId}", method = RequestMethod.PUT)
	public Long modifyIndividualCustomer(@PathVariable Long customerId,
										 @RequestBody IndividualCustomerReqDto modification) {
		return null;
	}

	@RequestMapping(value = "/customerView", method = RequestMethod.POST)
	public CustomerViewResDto getCustomerBasicInfos(@RequestBody CustomerSearchReqDto search) {
		return null;
	}

	@RequestMapping(value = "/customerInfo", method = RequestMethod.POST)
	public CustomerInfoResDto getCustomerInfos(@RequestBody CustomerSearchReqDto search) {
		return null;
	}

}
