package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.FtpPath;
import com.aii.crm.common.page.PageResult;

public interface IBsFtpPathSV {
	Integer saveFtpPath(FtpPath addDto);
	PageResult<FtpPath> listFtpPathPages(Integer pageNo, Integer pageSize);
	Integer updateFtpPath(FtpPath updateDto);
	Integer deleteFtpPath(String ftpPathCode);
	Integer loadFtpPath();
}
