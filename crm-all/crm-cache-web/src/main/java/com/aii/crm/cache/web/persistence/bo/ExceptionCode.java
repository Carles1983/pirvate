package com.aii.crm.cache.web.persistence.bo;

public class ExceptionCode {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column exception_code.EXCEPTION_CODE_TYPE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    private String exceptionCodeType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column exception_code.EXCEPTION_PARENT_CODE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    private String exceptionParentCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column exception_code.DESCRIPTION
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    private String description;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column exception_code.RES_KEY
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    private String resKey;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column exception_code.STATE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    private String state;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column exception_code.EXCEPTION_CODE_TYPE
     *
     * @return the value of exception_code.EXCEPTION_CODE_TYPE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public String getExceptionCodeType() {
        return exceptionCodeType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column exception_code.EXCEPTION_CODE_TYPE
     *
     * @param exceptionCodeType the value for exception_code.EXCEPTION_CODE_TYPE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void setExceptionCodeType(String exceptionCodeType) {
        this.exceptionCodeType = exceptionCodeType == null ? null : exceptionCodeType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column exception_code.EXCEPTION_PARENT_CODE
     *
     * @return the value of exception_code.EXCEPTION_PARENT_CODE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public String getExceptionParentCode() {
        return exceptionParentCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column exception_code.EXCEPTION_PARENT_CODE
     *
     * @param exceptionParentCode the value for exception_code.EXCEPTION_PARENT_CODE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void setExceptionParentCode(String exceptionParentCode) {
        this.exceptionParentCode = exceptionParentCode == null ? null : exceptionParentCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column exception_code.DESCRIPTION
     *
     * @return the value of exception_code.DESCRIPTION
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column exception_code.DESCRIPTION
     *
     * @param description the value for exception_code.DESCRIPTION
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column exception_code.RES_KEY
     *
     * @return the value of exception_code.RES_KEY
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public String getResKey() {
        return resKey;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column exception_code.RES_KEY
     *
     * @param resKey the value for exception_code.RES_KEY
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void setResKey(String resKey) {
        this.resKey = resKey == null ? null : resKey.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column exception_code.STATE
     *
     * @return the value of exception_code.STATE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column exception_code.STATE
     *
     * @param state the value for exception_code.STATE
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }
}