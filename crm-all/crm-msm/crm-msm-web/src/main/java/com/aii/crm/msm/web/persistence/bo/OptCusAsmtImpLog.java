package com.aii.crm.msm.web.persistence.bo;

import java.util.Date;

public class OptCusAsmtImpLog {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Long logId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.IMPORT_BATCH_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Long importBatchId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Long operatorId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.OPERATOR_NAME
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private String operatorName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.CUSTOMER_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Long customerId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.CUST_NAME
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private String custName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.STATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.REASON_TYPE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Long reasonType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.REASON_DESC
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private String reasonDesc;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.IMP_EXCEPTION
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private String impException;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.OP_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.CREATE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.STATE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Date stateDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_cus_asmt_imp_log.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    private Date doneDate;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.LOG_ID
     *
     * @return the value of opt_cus_asmt_imp_log.LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Long getLogId() {
        return logId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.LOG_ID
     *
     * @param logId the value for opt_cus_asmt_imp_log.LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setLogId(Long logId) {
        this.logId = logId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.IMPORT_BATCH_ID
     *
     * @return the value of opt_cus_asmt_imp_log.IMPORT_BATCH_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Long getImportBatchId() {
        return importBatchId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.IMPORT_BATCH_ID
     *
     * @param importBatchId the value for opt_cus_asmt_imp_log.IMPORT_BATCH_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setImportBatchId(Long importBatchId) {
        this.importBatchId = importBatchId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.OPERATOR_ID
     *
     * @return the value of opt_cus_asmt_imp_log.OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Long getOperatorId() {
        return operatorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.OPERATOR_ID
     *
     * @param operatorId the value for opt_cus_asmt_imp_log.OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setOperatorId(Long operatorId) {
        this.operatorId = operatorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.OPERATOR_NAME
     *
     * @return the value of opt_cus_asmt_imp_log.OPERATOR_NAME
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public String getOperatorName() {
        return operatorName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.OPERATOR_NAME
     *
     * @param operatorName the value for opt_cus_asmt_imp_log.OPERATOR_NAME
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName == null ? null : operatorName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.CUSTOMER_ID
     *
     * @return the value of opt_cus_asmt_imp_log.CUSTOMER_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Long getCustomerId() {
        return customerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.CUSTOMER_ID
     *
     * @param customerId the value for opt_cus_asmt_imp_log.CUSTOMER_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.CUST_NAME
     *
     * @return the value of opt_cus_asmt_imp_log.CUST_NAME
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public String getCustName() {
        return custName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.CUST_NAME
     *
     * @param custName the value for opt_cus_asmt_imp_log.CUST_NAME
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setCustName(String custName) {
        this.custName = custName == null ? null : custName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.STATE
     *
     * @return the value of opt_cus_asmt_imp_log.STATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.STATE
     *
     * @param state the value for opt_cus_asmt_imp_log.STATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.REASON_TYPE
     *
     * @return the value of opt_cus_asmt_imp_log.REASON_TYPE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Long getReasonType() {
        return reasonType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.REASON_TYPE
     *
     * @param reasonType the value for opt_cus_asmt_imp_log.REASON_TYPE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setReasonType(Long reasonType) {
        this.reasonType = reasonType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.REASON_DESC
     *
     * @return the value of opt_cus_asmt_imp_log.REASON_DESC
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public String getReasonDesc() {
        return reasonDesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.REASON_DESC
     *
     * @param reasonDesc the value for opt_cus_asmt_imp_log.REASON_DESC
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setReasonDesc(String reasonDesc) {
        this.reasonDesc = reasonDesc == null ? null : reasonDesc.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.IMP_EXCEPTION
     *
     * @return the value of opt_cus_asmt_imp_log.IMP_EXCEPTION
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public String getImpException() {
        return impException;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.IMP_EXCEPTION
     *
     * @param impException the value for opt_cus_asmt_imp_log.IMP_EXCEPTION
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setImpException(String impException) {
        this.impException = impException == null ? null : impException.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.OP_ID
     *
     * @return the value of opt_cus_asmt_imp_log.OP_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.OP_ID
     *
     * @param opId the value for opt_cus_asmt_imp_log.OP_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.ORG_ID
     *
     * @return the value of opt_cus_asmt_imp_log.ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.ORG_ID
     *
     * @param orgId the value for opt_cus_asmt_imp_log.ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.CREATE_DATE
     *
     * @return the value of opt_cus_asmt_imp_log.CREATE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.CREATE_DATE
     *
     * @param createDate the value for opt_cus_asmt_imp_log.CREATE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.STATE_DATE
     *
     * @return the value of opt_cus_asmt_imp_log.STATE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Date getStateDate() {
        return stateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.STATE_DATE
     *
     * @param stateDate the value for opt_cus_asmt_imp_log.STATE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setStateDate(Date stateDate) {
        this.stateDate = stateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_cus_asmt_imp_log.DONE_DATE
     *
     * @return the value of opt_cus_asmt_imp_log.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_cus_asmt_imp_log.DONE_DATE
     *
     * @param doneDate the value for opt_cus_asmt_imp_log.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:25:35 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }
}