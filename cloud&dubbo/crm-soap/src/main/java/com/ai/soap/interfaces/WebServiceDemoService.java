package com.ai.soap.interfaces;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 * @author: soane
 * @Date: 2019/7/19
 * @Time: 11:31
 * @Description: TODO
 */
@WebService
public interface WebServiceDemoService {

	@WebMethod
	String hello(@WebParam(name = "name")String name);
}
