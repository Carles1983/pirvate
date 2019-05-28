package com.aii.crm.cm.web.controller;

import com.aii.crm.cm.web.dto.req.CmAddressReqDto;
import com.aii.crm.cm.web.dto.req.CmContactMediumReqDto;
import com.aii.crm.cm.web.dto.req.PreferChannelReqDto;
import com.aii.crm.cm.web.dto.res.CmAddressResDto;
import com.aii.crm.cm.web.dto.res.ElectronMediumResDto;
import com.aii.crm.cm.web.dto.res.PreferChannelResDto;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cm")
public class CustomerMediumController {

	@RequestMapping(value = "/address/{customerId}", method = RequestMethod.POST)
	public Long createCustomerAddress(@PathVariable Long customerId,
									  @RequestBody CmAddressReqDto address) {
		return null;
	}

	@RequestMapping(value = "/address/amount/{customerId}", method = RequestMethod.GET)
	public Integer countCustomerAddresses(@PathVariable Long customerId) {
		return null;
	}

	@RequestMapping(value = "/address/{customerId}", method = RequestMethod.GET)
	public List<CmAddressResDto> acquireCustomerAddresses(
			@PathVariable Long customerId,
			@RequestParam Integer start,
			@RequestParam Integer offset) {
		return null;
	}

	@RequestMapping(value = "address/delivery/{customerId}", method = RequestMethod.POST)
	public Long saveCustomerDeliveryAddress(@PathVariable Long customerId,
											@RequestBody CmAddressReqDto address) {
		return null;
	}

	@RequestMapping(value = "address/delivery/{customerId}/{relationId}", method = RequestMethod.PUT)
	public Long modifyDeliveryCustomerAddress(@PathVariable Long customerId,
											  @PathVariable Long relationId,
											  @RequestBody CmAddressReqDto address) {
		return null;
	}

	@RequestMapping(value = "/address/delivery/amount/{customerId}", method = RequestMethod.GET)
	public Integer countCustomerDeliveryAddresses(@PathVariable Long customerId) {
		return null;
	}

	@RequestMapping(value = "/address/delivery/{customerId}", method = RequestMethod.GET)
	public List<CmAddressResDto> acquireCustomerDeliveryAddresses(
			@PathVariable String customerId) {
		return null;
	}

	@RequestMapping(value = "/address/bill/amount/{customerId}", method = RequestMethod.GET)
	public Integer countCustomerBillAddress(@PathVariable Long customerId) {
		return null;
	}

	@RequestMapping(value = "/address/bill/{customerId}", method = RequestMethod.GET)
	public List<CmAddressResDto> acquireCustomerBillAddresses(
			@PathVariable Long customerId,
			@RequestParam Integer start,
			@RequestParam Integer offset) {
		return null;
	}

	@RequestMapping(value = "/address/delivery/{customerId}/{relationId}", method =
			RequestMethod.DELETE)
	public Integer deleteCustomerDeliveryAddress(@PathVariable Long customerId, @PathVariable Long relationId) {
		return null;
	}

	@RequestMapping(value = "/address/{customerId}{relationId}", method = RequestMethod.DELETE)
	public Integer deleteCustomerAddress(@PathVariable Long customerId,
										 @PathVariable Long relationId) {
		return null;
	}

	@RequestMapping(value = "/address/{customerId}{relationId}", method = RequestMethod.PUT)
	public Integer modifyCustomerAddress(@PathVariable Long customerId,
										 @PathVariable Long relationId, @RequestBody CmAddressReqDto address) {
		return null;
	}

	@RequestMapping(value = "/contact/{customerId}", method = RequestMethod.POST)
	public Long createCustomerContact(@PathVariable Long customerId,
									  @RequestBody CmContactMediumReqDto contact) {
		return null;
	}

	@RequestMapping(value = "/contact/amount/{customerId}", method = RequestMethod.GET)
	public Integer countCustomerContactMediums(@PathVariable Long customerId) {
		return null;
	}

	@RequestMapping(value = "/contact/{customerId}", method = RequestMethod.GET)
	public List<ElectronMediumResDto> acquireCustomerContactMediums(
			@PathVariable Long customerId,
			@RequestParam Integer start,
			@RequestParam Integer offset) {
		return null;
	}


	@RequestMapping(value = "/contact/{customerId}/{relationId}", method = RequestMethod.DELETE)
	public Integer deleteCustomerContact(@PathVariable Long customerId,
										 @PathVariable Long relationId) {
		return null;
	}

	@RequestMapping(value = "/contact/{customerId}/{relationId}", method = RequestMethod.PUT)
	public Integer modifyCustomerContactWithRelaId(@PathVariable Long customerId, @PathVariable Long relationId,
												   @RequestBody CmContactMediumReqDto address) {
		return null;
	}

	/**
	 * 批量修改客户联系信息
	 */
	@RequestMapping(value = "/contact/batch/{customerId}", method = RequestMethod.PUT)
	public Integer modifyCustomerContact(@PathVariable Long customerId, @RequestBody List<CmContactMediumReqDto> addresses) {
		return null;
	}

	/**
	 * 设置默认地址
	 */
	@RequestMapping(value = "/address/delivery/default/{customerId}/{relationId}/{priority}", method =
			RequestMethod.PUT)
	public Boolean setDefaultAddress(@PathVariable Long customerId,
									 @PathVariable Long relationId, @PathVariable Long priority) {
		return null;
	}

	@RequestMapping(value = "/address/delivery/contact/{relationId}", method = RequestMethod.GET)
	public CmAddressResDto getCustomerDeliveryAddressesById(@PathVariable Long relationId) {
		return null;
	}


	@RequestMapping(value = "/channel/prefer/{customerId}", method = RequestMethod.POST)
	public Long createCustomerPreferencesContactMediums(
			@PathVariable Long customerId, @RequestBody PreferChannelReqDto preferChannelDto) {
		return null;
	}

	@RequestMapping(value = "/channel/prefer/{customerId}/{relationId}", method =
			RequestMethod.PUT)
	public Long modifyCustomerPreferencesContactMediums(
			@PathVariable Long customerId,
			@PathVariable Long relationId,
			@RequestBody PreferChannelReqDto preferChannelReqDto) {
		return null;
	}


	@RequestMapping(value = "/channel/prefer/{customerId}/{relationId}", method =
			RequestMethod.DELETE)
	public Integer deleteCustomerPreferencesContactMediums(
			@PathVariable Long customerId,
			@PathVariable Long relationId) {
		return null;
	}

	@RequestMapping(value = "/channel/prefer/{customerId}", method = RequestMethod.GET)
	public List<PreferChannelResDto> acquireCustomerPreferencesContactMediums(
			@PathVariable Long customerId,
			@RequestParam Integer start,
			@RequestParam Integer offset) {
		return null;
	}

}
