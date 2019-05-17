package com.aii.crm.common.exception;

public class CrmRuntimeException extends RuntimeException {

	public CrmRuntimeException(String message){
		super(message);
	}

	public CrmRuntimeException(String message, Throwable cause){
		super(message, cause);
	}
}
