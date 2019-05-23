package com.aii.crm.cm.web.controller;

import com.aii.crm.cm.web.dto.req.AccountReqDto;
import com.aii.crm.cm.web.dto.res.AccountResDto;
import com.aii.crm.cm.web.dto.res.PaymentMethodResDto;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cm")
public class AccountController {

	@RequestMapping(value = "/account", method = RequestMethod.POST)
	public Long createAccount(@RequestBody AccountReqDto accountReqDto){
		return null;
	}

	@RequestMapping(value = "/account/{accountId}", method = RequestMethod.POST)
	public Long createAccountWithAccountId(@PathVariable Long accountId, @RequestBody AccountReqDto accountReqDto){
		return null;
	}

	@RequestMapping(value = "/account/{accountId}", method = RequestMethod.PUT)
	public Long modifyAccountWithAccountId(@PathVariable Long accountId, @RequestBody AccountReqDto accountReqDto){
		return null;
	}

	@RequestMapping(value = "/account/{customerId}", method = RequestMethod.GET)
	public List<AccountResDto> listAccountWithCustomerId(@PathVariable Long customerId){
		return null;
	}

	@RequestMapping(value = "/account/{accountId}", method = RequestMethod.GET)
	public AccountResDto getAccountWithAccountId(@PathVariable Long accountId){
		return null;
	}

	@RequestMapping(value = "/payment/{csutomerId}/{accountStatus}", method = RequestMethod.GET)
	public List<PaymentMethodResDto> getAccountWithAccountId(@PathVariable Long csutomerId,
															 @PathVariable Integer accountStatus){
		return null;
	}

	@RequestMapping(value = "/account/count/{customerId}", method = RequestMethod.GET)
	public Long countAccountInfos(@PathVariable Long customerId) {
		return null;
	}

	@RequestMapping(value = "/account/{billId}", method = RequestMethod.GET)
	public AccountResDto getAccountByBillId(@PathVariable String billId) {
		return null;
	}

	@RequestMapping(value = "/account/{accountId}", method = RequestMethod.DELETE)
	public Boolean deleteAccount(@PathVariable Long accountId) {
		return null;
	}

}
