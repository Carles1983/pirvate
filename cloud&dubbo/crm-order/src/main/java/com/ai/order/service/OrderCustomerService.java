package com.ai.order.service;

import com.ai.order.bo.OrdCust;
import java.util.List;

/**
 * @author: soane
 * @Date: 2019/7/5
 * @Time: 10:52
 * @Description: TODO
 */
public interface OrderCustomerService {
	List<OrdCust> listOrderCustomer(Integer pageNo, Integer pageSize);
}
