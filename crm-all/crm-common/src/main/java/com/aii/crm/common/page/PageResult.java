package com.aii.crm.common.page;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class PageResult<T> implements Serializable {
	private int pageNum;
	private int pageSize;
	private long total;
	private int pages;
	private List<T> resultList;
}
