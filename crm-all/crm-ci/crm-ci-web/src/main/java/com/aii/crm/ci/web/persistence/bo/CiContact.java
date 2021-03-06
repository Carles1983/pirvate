package com.aii.crm.ci.web.persistence.bo;

import java.util.Date;

public class CiContact {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.CONTACT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long contactId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.CHANNEL_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long channelId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.SRC_CONTACT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private String srcContactId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.CONTACT_TIME
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Date contactTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.COMPLETE_TIME
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Date completeTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.DURATION_INTERVAL
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long durationInterval;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.INTERACTION_COUNT
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long interactionCount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.CONTACT_TYPE
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long contactType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.CUST_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long custId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.CUST_REGION_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private String custRegionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.OP_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.ORG_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.SRC_SYS_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private String srcSysId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.CONTACT_RESULT
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private Long contactResult;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.RESULT_DETAIL
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private String resultDetail;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.TENANT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private String tenantId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_contact.REMARK
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    private String remark;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.CONTACT_ID
     *
     * @return the value of ci_contact.CONTACT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getContactId() {
        return contactId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.CONTACT_ID
     *
     * @param contactId the value for ci_contact.CONTACT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setContactId(Long contactId) {
        this.contactId = contactId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.CHANNEL_ID
     *
     * @return the value of ci_contact.CHANNEL_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getChannelId() {
        return channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.CHANNEL_ID
     *
     * @param channelId the value for ci_contact.CHANNEL_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setChannelId(Long channelId) {
        this.channelId = channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.SRC_CONTACT_ID
     *
     * @return the value of ci_contact.SRC_CONTACT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public String getSrcContactId() {
        return srcContactId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.SRC_CONTACT_ID
     *
     * @param srcContactId the value for ci_contact.SRC_CONTACT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setSrcContactId(String srcContactId) {
        this.srcContactId = srcContactId == null ? null : srcContactId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.CONTACT_TIME
     *
     * @return the value of ci_contact.CONTACT_TIME
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Date getContactTime() {
        return contactTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.CONTACT_TIME
     *
     * @param contactTime the value for ci_contact.CONTACT_TIME
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setContactTime(Date contactTime) {
        this.contactTime = contactTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.COMPLETE_TIME
     *
     * @return the value of ci_contact.COMPLETE_TIME
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Date getCompleteTime() {
        return completeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.COMPLETE_TIME
     *
     * @param completeTime the value for ci_contact.COMPLETE_TIME
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setCompleteTime(Date completeTime) {
        this.completeTime = completeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.DURATION_INTERVAL
     *
     * @return the value of ci_contact.DURATION_INTERVAL
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getDurationInterval() {
        return durationInterval;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.DURATION_INTERVAL
     *
     * @param durationInterval the value for ci_contact.DURATION_INTERVAL
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setDurationInterval(Long durationInterval) {
        this.durationInterval = durationInterval;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.INTERACTION_COUNT
     *
     * @return the value of ci_contact.INTERACTION_COUNT
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getInteractionCount() {
        return interactionCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.INTERACTION_COUNT
     *
     * @param interactionCount the value for ci_contact.INTERACTION_COUNT
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setInteractionCount(Long interactionCount) {
        this.interactionCount = interactionCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.CONTACT_TYPE
     *
     * @return the value of ci_contact.CONTACT_TYPE
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getContactType() {
        return contactType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.CONTACT_TYPE
     *
     * @param contactType the value for ci_contact.CONTACT_TYPE
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setContactType(Long contactType) {
        this.contactType = contactType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.CUST_ID
     *
     * @return the value of ci_contact.CUST_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getCustId() {
        return custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.CUST_ID
     *
     * @param custId the value for ci_contact.CUST_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setCustId(Long custId) {
        this.custId = custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.CUST_REGION_ID
     *
     * @return the value of ci_contact.CUST_REGION_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public String getCustRegionId() {
        return custRegionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.CUST_REGION_ID
     *
     * @param custRegionId the value for ci_contact.CUST_REGION_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setCustRegionId(String custRegionId) {
        this.custRegionId = custRegionId == null ? null : custRegionId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.OP_ID
     *
     * @return the value of ci_contact.OP_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.OP_ID
     *
     * @param opId the value for ci_contact.OP_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.ORG_ID
     *
     * @return the value of ci_contact.ORG_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.ORG_ID
     *
     * @param orgId the value for ci_contact.ORG_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.SRC_SYS_ID
     *
     * @return the value of ci_contact.SRC_SYS_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public String getSrcSysId() {
        return srcSysId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.SRC_SYS_ID
     *
     * @param srcSysId the value for ci_contact.SRC_SYS_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setSrcSysId(String srcSysId) {
        this.srcSysId = srcSysId == null ? null : srcSysId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.CONTACT_RESULT
     *
     * @return the value of ci_contact.CONTACT_RESULT
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public Long getContactResult() {
        return contactResult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.CONTACT_RESULT
     *
     * @param contactResult the value for ci_contact.CONTACT_RESULT
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setContactResult(Long contactResult) {
        this.contactResult = contactResult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.RESULT_DETAIL
     *
     * @return the value of ci_contact.RESULT_DETAIL
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public String getResultDetail() {
        return resultDetail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.RESULT_DETAIL
     *
     * @param resultDetail the value for ci_contact.RESULT_DETAIL
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setResultDetail(String resultDetail) {
        this.resultDetail = resultDetail == null ? null : resultDetail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.TENANT_ID
     *
     * @return the value of ci_contact.TENANT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public String getTenantId() {
        return tenantId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.TENANT_ID
     *
     * @param tenantId the value for ci_contact.TENANT_ID
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId == null ? null : tenantId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_contact.REMARK
     *
     * @return the value of ci_contact.REMARK
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_contact.REMARK
     *
     * @param remark the value for ci_contact.REMARK
     *
     * @mbg.generated Tue May 21 15:46:47 CST 2019
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}