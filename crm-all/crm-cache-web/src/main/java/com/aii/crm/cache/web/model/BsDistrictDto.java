package com.aii.crm.cache.web.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class BsDistrictDto implements Serializable {
	private Long districtId;
	private String regionId;
	private String districtName;
	private String districtEnglishName;
	private Integer districtTypeId;
	private Integer parentDistrictId;
	private String areaCode;
	private Integer postCode;
	private String notes;
	private Integer sortId;
	private String centerInfoCode;
	private Short districtTwoNumber;
	private Short courseFlag;
}
