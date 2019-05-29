package com.aii.crm.msm.web.persistence.bo;

import java.util.Date;

public class OptLeadAttach {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.OPPORTUNITY_ATTACHMENT_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private Long opportunityAttachmentId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.SALES_LEAD_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private Long salesLeadId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.ATTACH_FILE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private String attachFile;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.CREATE_DATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.ORG_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.OP_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.DONE_CODE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private String doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column opt_lead_attach.STATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    private Long state;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.OPPORTUNITY_ATTACHMENT_ID
     *
     * @return the value of opt_lead_attach.OPPORTUNITY_ATTACHMENT_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public Long getOpportunityAttachmentId() {
        return opportunityAttachmentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.OPPORTUNITY_ATTACHMENT_ID
     *
     * @param opportunityAttachmentId the value for opt_lead_attach.OPPORTUNITY_ATTACHMENT_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setOpportunityAttachmentId(Long opportunityAttachmentId) {
        this.opportunityAttachmentId = opportunityAttachmentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.SALES_LEAD_ID
     *
     * @return the value of opt_lead_attach.SALES_LEAD_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public Long getSalesLeadId() {
        return salesLeadId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.SALES_LEAD_ID
     *
     * @param salesLeadId the value for opt_lead_attach.SALES_LEAD_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setSalesLeadId(Long salesLeadId) {
        this.salesLeadId = salesLeadId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.ATTACH_FILE
     *
     * @return the value of opt_lead_attach.ATTACH_FILE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public String getAttachFile() {
        return attachFile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.ATTACH_FILE
     *
     * @param attachFile the value for opt_lead_attach.ATTACH_FILE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setAttachFile(String attachFile) {
        this.attachFile = attachFile == null ? null : attachFile.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.CREATE_DATE
     *
     * @return the value of opt_lead_attach.CREATE_DATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.CREATE_DATE
     *
     * @param createDate the value for opt_lead_attach.CREATE_DATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.ORG_ID
     *
     * @return the value of opt_lead_attach.ORG_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.ORG_ID
     *
     * @param orgId the value for opt_lead_attach.ORG_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.OP_ID
     *
     * @return the value of opt_lead_attach.OP_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.OP_ID
     *
     * @param opId the value for opt_lead_attach.OP_ID
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.DONE_DATE
     *
     * @return the value of opt_lead_attach.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.DONE_DATE
     *
     * @param doneDate the value for opt_lead_attach.DONE_DATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.DONE_CODE
     *
     * @return the value of opt_lead_attach.DONE_CODE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public String getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.DONE_CODE
     *
     * @param doneCode the value for opt_lead_attach.DONE_CODE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setDoneCode(String doneCode) {
        this.doneCode = doneCode == null ? null : doneCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column opt_lead_attach.STATE
     *
     * @return the value of opt_lead_attach.STATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public Long getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column opt_lead_attach.STATE
     *
     * @param state the value for opt_lead_attach.STATE
     *
     * @mbg.generated Wed May 29 10:28:10 CST 2019
     */
    public void setState(Long state) {
        this.state = state;
    }
}