package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmGroupContactModReqDto implements Serializable {
	private CmContactMediumReqDto cmContactMediumDto;
	private CmAddressReqDto cmAddressDto;
}
