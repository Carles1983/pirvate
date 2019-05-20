package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.Ftp;
import com.aii.crm.common.page.PageResult;


public interface IBsFtpSV {
	Integer saveFtp(Ftp addDto);
	PageResult<Ftp> listFtpPages(Integer pageNo, Integer pageSize);
	Integer updateFtp(Ftp updateDto);
	Integer deleteFtp(String ftpCode);
	Integer loadFtp();
}
