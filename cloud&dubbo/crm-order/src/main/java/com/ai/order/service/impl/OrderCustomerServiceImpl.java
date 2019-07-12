package com.ai.order.service.impl;

import com.ai.order.bo.OrdCust;
import com.ai.order.bo.OrdCustExample;
import com.ai.order.mapper.OrdCustMapper;
import com.ai.order.service.OrderCustomerService;
import com.github.pagehelper.PageHelper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: soane
 * @Date: 2019/7/5
 * @Time: 10:52
 * @Description: TODO
 */
@Service
public class OrderCustomerServiceImpl implements OrderCustomerService {

	@Autowired
	private OrdCustMapper orderCustomerMapper;

	@Override
	public List<OrdCust> listOrderCustomer(Integer pageNo, Integer pageSize) {
		PageHelper.startPage(pageNo, pageSize, true);
		OrdCustExample example = new OrdCustExample();
		return orderCustomerMapper.selectByExample(example);
	}
}
