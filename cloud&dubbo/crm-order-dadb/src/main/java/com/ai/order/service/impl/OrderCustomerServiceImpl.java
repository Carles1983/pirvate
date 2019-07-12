package com.ai.order.service.impl;

import com.ai.order.bo.OrdCust;
import com.ai.order.bo.OrdCustExample;
import com.ai.order.mapper.OrdCustMapper;
import com.ai.order.service.OrderCustomerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: soane
 * @Date: 2019/7/8
 * @Time: 10:43
 * @Description: TODO
 */
@Service
public class OrderCustomerServiceImpl implements OrderCustomerService {

	@Autowired
	private OrdCustMapper customerMapper;

	@Override
	public Integer insertOrderCustomer(OrdCust customer) {
		return customerMapper.insert(customer);
	}

	@Override
	public List<OrdCust> listOrderCustomers(Long customerId) {
		OrdCustExample example = new OrdCustExample();
		OrdCustExample.Criteria criteria = example.createCriteria();
		criteria.andCustIdEqualTo(customerId);
		return customerMapper.selectByExample(example);
	}
}
