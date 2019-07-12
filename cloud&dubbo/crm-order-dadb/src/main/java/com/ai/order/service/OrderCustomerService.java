package com.ai.order.service;

import com.ai.order.bo.OrdCust;
import java.util.List;

/**
 * @author: soane
 * @Date: 2019/7/8
 * @Time: 10:43
 * @Description: TODO
 */
public interface OrderCustomerService {
	Integer insertOrderCustomer(OrdCust customer);

	List<OrdCust> listOrderCustomers(Long customerId);
}
