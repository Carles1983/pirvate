package com.aii.crm.cm.web.persistence.bo;

import java.util.Date;

public class CmAcctPayment {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAYMENT_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long paymentId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.ACCT_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long acctId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAY_METHOD
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long payMethod;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.BANK_CONTRACT
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private String bankContract;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAYMENT_BANK_CODE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private String paymentBankCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAYMENT_ACCOUNT
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private String paymentAccount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAYMENT_ACCOUNT_NAME
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private String paymentAccountName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAYMENT_ACCOUNT_TYPE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long paymentAccountType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAYMENT_ACCOUNT_EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Date paymentAccountExpireDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PRIORITY
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long priority;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.STATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long createOpId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long createOrgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.OP_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.ORG_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Date effectiveDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Date expireDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.REGION_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private String regionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.REMARKS
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private String remarks;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_acct_payment.PAY_TYPE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    private Long payType;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAYMENT_ID
     *
     * @return the value of cm_acct_payment.PAYMENT_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getPaymentId() {
        return paymentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAYMENT_ID
     *
     * @param paymentId the value for cm_acct_payment.PAYMENT_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPaymentId(Long paymentId) {
        this.paymentId = paymentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.ACCT_ID
     *
     * @return the value of cm_acct_payment.ACCT_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getAcctId() {
        return acctId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.ACCT_ID
     *
     * @param acctId the value for cm_acct_payment.ACCT_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setAcctId(Long acctId) {
        this.acctId = acctId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAY_METHOD
     *
     * @return the value of cm_acct_payment.PAY_METHOD
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getPayMethod() {
        return payMethod;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAY_METHOD
     *
     * @param payMethod the value for cm_acct_payment.PAY_METHOD
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPayMethod(Long payMethod) {
        this.payMethod = payMethod;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.BANK_CONTRACT
     *
     * @return the value of cm_acct_payment.BANK_CONTRACT
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public String getBankContract() {
        return bankContract;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.BANK_CONTRACT
     *
     * @param bankContract the value for cm_acct_payment.BANK_CONTRACT
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setBankContract(String bankContract) {
        this.bankContract = bankContract == null ? null : bankContract.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAYMENT_BANK_CODE
     *
     * @return the value of cm_acct_payment.PAYMENT_BANK_CODE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public String getPaymentBankCode() {
        return paymentBankCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAYMENT_BANK_CODE
     *
     * @param paymentBankCode the value for cm_acct_payment.PAYMENT_BANK_CODE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPaymentBankCode(String paymentBankCode) {
        this.paymentBankCode = paymentBankCode == null ? null : paymentBankCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAYMENT_ACCOUNT
     *
     * @return the value of cm_acct_payment.PAYMENT_ACCOUNT
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public String getPaymentAccount() {
        return paymentAccount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAYMENT_ACCOUNT
     *
     * @param paymentAccount the value for cm_acct_payment.PAYMENT_ACCOUNT
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPaymentAccount(String paymentAccount) {
        this.paymentAccount = paymentAccount == null ? null : paymentAccount.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAYMENT_ACCOUNT_NAME
     *
     * @return the value of cm_acct_payment.PAYMENT_ACCOUNT_NAME
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public String getPaymentAccountName() {
        return paymentAccountName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAYMENT_ACCOUNT_NAME
     *
     * @param paymentAccountName the value for cm_acct_payment.PAYMENT_ACCOUNT_NAME
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPaymentAccountName(String paymentAccountName) {
        this.paymentAccountName = paymentAccountName == null ? null : paymentAccountName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAYMENT_ACCOUNT_TYPE
     *
     * @return the value of cm_acct_payment.PAYMENT_ACCOUNT_TYPE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getPaymentAccountType() {
        return paymentAccountType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAYMENT_ACCOUNT_TYPE
     *
     * @param paymentAccountType the value for cm_acct_payment.PAYMENT_ACCOUNT_TYPE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPaymentAccountType(Long paymentAccountType) {
        this.paymentAccountType = paymentAccountType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAYMENT_ACCOUNT_EXPIRE_DATE
     *
     * @return the value of cm_acct_payment.PAYMENT_ACCOUNT_EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Date getPaymentAccountExpireDate() {
        return paymentAccountExpireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAYMENT_ACCOUNT_EXPIRE_DATE
     *
     * @param paymentAccountExpireDate the value for cm_acct_payment.PAYMENT_ACCOUNT_EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPaymentAccountExpireDate(Date paymentAccountExpireDate) {
        this.paymentAccountExpireDate = paymentAccountExpireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PRIORITY
     *
     * @return the value of cm_acct_payment.PRIORITY
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getPriority() {
        return priority;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PRIORITY
     *
     * @param priority the value for cm_acct_payment.PRIORITY
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPriority(Long priority) {
        this.priority = priority;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.STATE
     *
     * @return the value of cm_acct_payment.STATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.STATE
     *
     * @param state the value for cm_acct_payment.STATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.CREATE_OP_ID
     *
     * @return the value of cm_acct_payment.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getCreateOpId() {
        return createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.CREATE_OP_ID
     *
     * @param createOpId the value for cm_acct_payment.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setCreateOpId(Long createOpId) {
        this.createOpId = createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.CREATE_ORG_ID
     *
     * @return the value of cm_acct_payment.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getCreateOrgId() {
        return createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.CREATE_ORG_ID
     *
     * @param createOrgId the value for cm_acct_payment.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setCreateOrgId(Long createOrgId) {
        this.createOrgId = createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.OP_ID
     *
     * @return the value of cm_acct_payment.OP_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.OP_ID
     *
     * @param opId the value for cm_acct_payment.OP_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.ORG_ID
     *
     * @return the value of cm_acct_payment.ORG_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.ORG_ID
     *
     * @param orgId the value for cm_acct_payment.ORG_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.DONE_CODE
     *
     * @return the value of cm_acct_payment.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.DONE_CODE
     *
     * @param doneCode the value for cm_acct_payment.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setDoneCode(Long doneCode) {
        this.doneCode = doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.CREATE_DATE
     *
     * @return the value of cm_acct_payment.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.CREATE_DATE
     *
     * @param createDate the value for cm_acct_payment.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.DONE_DATE
     *
     * @return the value of cm_acct_payment.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.DONE_DATE
     *
     * @param doneDate the value for cm_acct_payment.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.EFFECTIVE_DATE
     *
     * @return the value of cm_acct_payment.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Date getEffectiveDate() {
        return effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.EFFECTIVE_DATE
     *
     * @param effectiveDate the value for cm_acct_payment.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.EXPIRE_DATE
     *
     * @return the value of cm_acct_payment.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Date getExpireDate() {
        return expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.EXPIRE_DATE
     *
     * @param expireDate the value for cm_acct_payment.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.REGION_ID
     *
     * @return the value of cm_acct_payment.REGION_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public String getRegionId() {
        return regionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.REGION_ID
     *
     * @param regionId the value for cm_acct_payment.REGION_ID
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setRegionId(String regionId) {
        this.regionId = regionId == null ? null : regionId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.REMARKS
     *
     * @return the value of cm_acct_payment.REMARKS
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.REMARKS
     *
     * @param remarks the value for cm_acct_payment.REMARKS
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_acct_payment.PAY_TYPE
     *
     * @return the value of cm_acct_payment.PAY_TYPE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public Long getPayType() {
        return payType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_acct_payment.PAY_TYPE
     *
     * @param payType the value for cm_acct_payment.PAY_TYPE
     *
     * @mbg.generated Tue May 28 20:04:51 CST 2019
     */
    public void setPayType(Long payType) {
        this.payType = payType;
    }
}