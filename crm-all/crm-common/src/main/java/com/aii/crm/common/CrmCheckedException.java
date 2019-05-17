package com.aii.crm.common;

import java.util.Map;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;

@Data
public class CrmCheckedException extends Exception {
	String errorCode;
	String errorMessage;
	String moreInfo;

	private String key;
	private Object[] args;
	private Map<String, Object> i18n;

	public CrmCheckedException(String errorCode, String errorMessage, String key, Object args[], Throwable cause) {
		super(wrapperMessage(key, args), cause);
		this.key = key;
		this.args = args;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
	}

	private static String wrapperMessage(String key, Object args[]) {
		try {
			if (args == null) {
				return key;
			}
		} catch (Throwable ex) {
			StringBuilder sb = new StringBuilder();
			sb.append("{");
			if (args != null) {
				for (int i = 0; i < args.length; i++) {
					sb.append(args[i]);
					if (i != args.length - 1) {
						sb.append(",");
					}
				}

			}
			sb.append("}");
			return (new StringBuilder()).append("key=").append(key).append(", args=").append(sb.toString()).toString();
		}
		return getResource(key, args);
	}

	private static String getResource(String key, Object[] args) {
		if (args != null && args.length > 0) {
			for (int i = 0; i < args.length; i++) {
				if (args[i] != null) {
					key = StringUtils
							.replaceOnce(key, (new StringBuilder()).append("{").append(i).append("}").toString(), args[i].toString());
				} else {
					key = StringUtils.replaceOnce(key, (new StringBuilder()).append("{").append(i).append("}").toString(), "<null>");
				}
			}
		}
		return key;
	}
}
