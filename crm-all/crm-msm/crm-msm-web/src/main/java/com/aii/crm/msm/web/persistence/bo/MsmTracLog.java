package com.aii.crm.msm.web.persistence.bo;

import java.util.Date;

public class MsmTracLog {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.ASSIGN_LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long assignLogId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.RELATED_OBJECT_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private String relatedObjectType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.ASSIGN_ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long assignOrgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.ASSIGN_OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long assignOperatorId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.SALES_ORGNIZATION_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long salesOrgnizationId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long operatorId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.RELATED_OBJECT_NAME
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private String relatedObjectName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.RELATED_OBJECT_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private String relatedObjectId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.ASSIGN_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private String assignType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.PARENT_ASSIGN_LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long parentAssignLogId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.OP_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.DONE_CODE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private String doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.STATE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.REMARKS
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private String remarks;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.SUB_OBJECT_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private String subObjectType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column msm_trac_log.STATE_TRAC
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    private Long stateTrac;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.ASSIGN_LOG_ID
     *
     * @return the value of msm_trac_log.ASSIGN_LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getAssignLogId() {
        return assignLogId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.ASSIGN_LOG_ID
     *
     * @param assignLogId the value for msm_trac_log.ASSIGN_LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setAssignLogId(Long assignLogId) {
        this.assignLogId = assignLogId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.RELATED_OBJECT_TYPE
     *
     * @return the value of msm_trac_log.RELATED_OBJECT_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public String getRelatedObjectType() {
        return relatedObjectType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.RELATED_OBJECT_TYPE
     *
     * @param relatedObjectType the value for msm_trac_log.RELATED_OBJECT_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setRelatedObjectType(String relatedObjectType) {
        this.relatedObjectType = relatedObjectType == null ? null : relatedObjectType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.ASSIGN_ORG_ID
     *
     * @return the value of msm_trac_log.ASSIGN_ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getAssignOrgId() {
        return assignOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.ASSIGN_ORG_ID
     *
     * @param assignOrgId the value for msm_trac_log.ASSIGN_ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setAssignOrgId(Long assignOrgId) {
        this.assignOrgId = assignOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.ASSIGN_OPERATOR_ID
     *
     * @return the value of msm_trac_log.ASSIGN_OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getAssignOperatorId() {
        return assignOperatorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.ASSIGN_OPERATOR_ID
     *
     * @param assignOperatorId the value for msm_trac_log.ASSIGN_OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setAssignOperatorId(Long assignOperatorId) {
        this.assignOperatorId = assignOperatorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.SALES_ORGNIZATION_ID
     *
     * @return the value of msm_trac_log.SALES_ORGNIZATION_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getSalesOrgnizationId() {
        return salesOrgnizationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.SALES_ORGNIZATION_ID
     *
     * @param salesOrgnizationId the value for msm_trac_log.SALES_ORGNIZATION_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setSalesOrgnizationId(Long salesOrgnizationId) {
        this.salesOrgnizationId = salesOrgnizationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.OPERATOR_ID
     *
     * @return the value of msm_trac_log.OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getOperatorId() {
        return operatorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.OPERATOR_ID
     *
     * @param operatorId the value for msm_trac_log.OPERATOR_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setOperatorId(Long operatorId) {
        this.operatorId = operatorId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.RELATED_OBJECT_NAME
     *
     * @return the value of msm_trac_log.RELATED_OBJECT_NAME
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public String getRelatedObjectName() {
        return relatedObjectName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.RELATED_OBJECT_NAME
     *
     * @param relatedObjectName the value for msm_trac_log.RELATED_OBJECT_NAME
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setRelatedObjectName(String relatedObjectName) {
        this.relatedObjectName = relatedObjectName == null ? null : relatedObjectName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.RELATED_OBJECT_ID
     *
     * @return the value of msm_trac_log.RELATED_OBJECT_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public String getRelatedObjectId() {
        return relatedObjectId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.RELATED_OBJECT_ID
     *
     * @param relatedObjectId the value for msm_trac_log.RELATED_OBJECT_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setRelatedObjectId(String relatedObjectId) {
        this.relatedObjectId = relatedObjectId == null ? null : relatedObjectId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.ASSIGN_TYPE
     *
     * @return the value of msm_trac_log.ASSIGN_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public String getAssignType() {
        return assignType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.ASSIGN_TYPE
     *
     * @param assignType the value for msm_trac_log.ASSIGN_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setAssignType(String assignType) {
        this.assignType = assignType == null ? null : assignType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.PARENT_ASSIGN_LOG_ID
     *
     * @return the value of msm_trac_log.PARENT_ASSIGN_LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getParentAssignLogId() {
        return parentAssignLogId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.PARENT_ASSIGN_LOG_ID
     *
     * @param parentAssignLogId the value for msm_trac_log.PARENT_ASSIGN_LOG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setParentAssignLogId(Long parentAssignLogId) {
        this.parentAssignLogId = parentAssignLogId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.ORG_ID
     *
     * @return the value of msm_trac_log.ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.ORG_ID
     *
     * @param orgId the value for msm_trac_log.ORG_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.OP_ID
     *
     * @return the value of msm_trac_log.OP_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.OP_ID
     *
     * @param opId the value for msm_trac_log.OP_ID
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.DONE_DATE
     *
     * @return the value of msm_trac_log.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.DONE_DATE
     *
     * @param doneDate the value for msm_trac_log.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.DONE_CODE
     *
     * @return the value of msm_trac_log.DONE_CODE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public String getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.DONE_CODE
     *
     * @param doneCode the value for msm_trac_log.DONE_CODE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setDoneCode(String doneCode) {
        this.doneCode = doneCode == null ? null : doneCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.STATE
     *
     * @return the value of msm_trac_log.STATE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.STATE
     *
     * @param state the value for msm_trac_log.STATE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setState(Long state) {
        this.state = state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.REMARKS
     *
     * @return the value of msm_trac_log.REMARKS
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.REMARKS
     *
     * @param remarks the value for msm_trac_log.REMARKS
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.SUB_OBJECT_TYPE
     *
     * @return the value of msm_trac_log.SUB_OBJECT_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public String getSubObjectType() {
        return subObjectType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.SUB_OBJECT_TYPE
     *
     * @param subObjectType the value for msm_trac_log.SUB_OBJECT_TYPE
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setSubObjectType(String subObjectType) {
        this.subObjectType = subObjectType == null ? null : subObjectType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column msm_trac_log.STATE_TRAC
     *
     * @return the value of msm_trac_log.STATE_TRAC
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public Long getStateTrac() {
        return stateTrac;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column msm_trac_log.STATE_TRAC
     *
     * @param stateTrac the value for msm_trac_log.STATE_TRAC
     *
     * @mbg.generated Wed May 29 10:25:23 CST 2019
     */
    public void setStateTrac(Long stateTrac) {
        this.stateTrac = stateTrac;
    }
}