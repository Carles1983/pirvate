package com.aii.crm.shop.web.persistence.bo;

import java.util.Date;

public class PaymentMethod {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.PAYMENT_METHOD_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Short paymentMethodId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.FEE_TYPE_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Integer feeTypeId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.CUSTOMER_TYPE_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Short customerTypeId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.PAYMENT_METHOD_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String paymentMethodCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.PAYMENT_METHOD_NAME
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String paymentMethodName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.PAYMENT_URL
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String paymentUrl;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.INSTALLMENT_CONFLICT_FLAG
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String installmentConflictFlag;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.STATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.CREATE_OP_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Long createOpId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.CREATE_ORG_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Long createOrgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.OP_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.ORG_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.DONE_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Long doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.CREATE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.DONE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.EFFECTIVE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Date effectiveDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.EXPIRE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private Date expireDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.TENANT_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String tenantId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.REMARKS
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String remarks;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column payment_method.SUBSSYS_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    private String subssysCode;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.PAYMENT_METHOD_ID
     *
     * @return the value of payment_method.PAYMENT_METHOD_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Short getPaymentMethodId() {
        return paymentMethodId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.PAYMENT_METHOD_ID
     *
     * @param paymentMethodId the value for payment_method.PAYMENT_METHOD_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setPaymentMethodId(Short paymentMethodId) {
        this.paymentMethodId = paymentMethodId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.FEE_TYPE_ID
     *
     * @return the value of payment_method.FEE_TYPE_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Integer getFeeTypeId() {
        return feeTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.FEE_TYPE_ID
     *
     * @param feeTypeId the value for payment_method.FEE_TYPE_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setFeeTypeId(Integer feeTypeId) {
        this.feeTypeId = feeTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.CUSTOMER_TYPE_ID
     *
     * @return the value of payment_method.CUSTOMER_TYPE_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Short getCustomerTypeId() {
        return customerTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.CUSTOMER_TYPE_ID
     *
     * @param customerTypeId the value for payment_method.CUSTOMER_TYPE_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setCustomerTypeId(Short customerTypeId) {
        this.customerTypeId = customerTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.PAYMENT_METHOD_CODE
     *
     * @return the value of payment_method.PAYMENT_METHOD_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getPaymentMethodCode() {
        return paymentMethodCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.PAYMENT_METHOD_CODE
     *
     * @param paymentMethodCode the value for payment_method.PAYMENT_METHOD_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setPaymentMethodCode(String paymentMethodCode) {
        this.paymentMethodCode = paymentMethodCode == null ? null : paymentMethodCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.PAYMENT_METHOD_NAME
     *
     * @return the value of payment_method.PAYMENT_METHOD_NAME
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getPaymentMethodName() {
        return paymentMethodName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.PAYMENT_METHOD_NAME
     *
     * @param paymentMethodName the value for payment_method.PAYMENT_METHOD_NAME
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setPaymentMethodName(String paymentMethodName) {
        this.paymentMethodName = paymentMethodName == null ? null : paymentMethodName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.PAYMENT_URL
     *
     * @return the value of payment_method.PAYMENT_URL
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getPaymentUrl() {
        return paymentUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.PAYMENT_URL
     *
     * @param paymentUrl the value for payment_method.PAYMENT_URL
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setPaymentUrl(String paymentUrl) {
        this.paymentUrl = paymentUrl == null ? null : paymentUrl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.INSTALLMENT_CONFLICT_FLAG
     *
     * @return the value of payment_method.INSTALLMENT_CONFLICT_FLAG
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getInstallmentConflictFlag() {
        return installmentConflictFlag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.INSTALLMENT_CONFLICT_FLAG
     *
     * @param installmentConflictFlag the value for payment_method.INSTALLMENT_CONFLICT_FLAG
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setInstallmentConflictFlag(String installmentConflictFlag) {
        this.installmentConflictFlag = installmentConflictFlag == null ? null : installmentConflictFlag.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.STATE
     *
     * @return the value of payment_method.STATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.STATE
     *
     * @param state the value for payment_method.STATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.CREATE_OP_ID
     *
     * @return the value of payment_method.CREATE_OP_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Long getCreateOpId() {
        return createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.CREATE_OP_ID
     *
     * @param createOpId the value for payment_method.CREATE_OP_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setCreateOpId(Long createOpId) {
        this.createOpId = createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.CREATE_ORG_ID
     *
     * @return the value of payment_method.CREATE_ORG_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Long getCreateOrgId() {
        return createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.CREATE_ORG_ID
     *
     * @param createOrgId the value for payment_method.CREATE_ORG_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setCreateOrgId(Long createOrgId) {
        this.createOrgId = createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.OP_ID
     *
     * @return the value of payment_method.OP_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.OP_ID
     *
     * @param opId the value for payment_method.OP_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.ORG_ID
     *
     * @return the value of payment_method.ORG_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.ORG_ID
     *
     * @param orgId the value for payment_method.ORG_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.DONE_CODE
     *
     * @return the value of payment_method.DONE_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Long getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.DONE_CODE
     *
     * @param doneCode the value for payment_method.DONE_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setDoneCode(Long doneCode) {
        this.doneCode = doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.CREATE_DATE
     *
     * @return the value of payment_method.CREATE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.CREATE_DATE
     *
     * @param createDate the value for payment_method.CREATE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.DONE_DATE
     *
     * @return the value of payment_method.DONE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.DONE_DATE
     *
     * @param doneDate the value for payment_method.DONE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.EFFECTIVE_DATE
     *
     * @return the value of payment_method.EFFECTIVE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Date getEffectiveDate() {
        return effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.EFFECTIVE_DATE
     *
     * @param effectiveDate the value for payment_method.EFFECTIVE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.EXPIRE_DATE
     *
     * @return the value of payment_method.EXPIRE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public Date getExpireDate() {
        return expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.EXPIRE_DATE
     *
     * @param expireDate the value for payment_method.EXPIRE_DATE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.TENANT_ID
     *
     * @return the value of payment_method.TENANT_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getTenantId() {
        return tenantId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.TENANT_ID
     *
     * @param tenantId the value for payment_method.TENANT_ID
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId == null ? null : tenantId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.REMARKS
     *
     * @return the value of payment_method.REMARKS
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.REMARKS
     *
     * @param remarks the value for payment_method.REMARKS
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column payment_method.SUBSSYS_CODE
     *
     * @return the value of payment_method.SUBSSYS_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public String getSubssysCode() {
        return subssysCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column payment_method.SUBSSYS_CODE
     *
     * @param subssysCode the value for payment_method.SUBSSYS_CODE
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    public void setSubssysCode(String subssysCode) {
        this.subssysCode = subssysCode == null ? null : subssysCode.trim();
    }
}