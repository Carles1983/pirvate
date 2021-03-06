package com.aii.crm.cm.web.persistence.bo;

import java.util.Date;

public class CmIndivContact {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.CUST_CONT_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long custContId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.PARTY_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long partyId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.CONT_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long contId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.CUST_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long custId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.PRIORY_LEVEL
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long prioryLevel;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.CONT_TYPE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long contType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.STATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long createOpId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long createOrgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.OP_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.ORG_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Long doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Date effectiveDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private Date expireDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.REGION_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private String regionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_indiv_contact.REMARKS
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    private String remarks;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.CUST_CONT_ID
     *
     * @return the value of cm_indiv_contact.CUST_CONT_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getCustContId() {
        return custContId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.CUST_CONT_ID
     *
     * @param custContId the value for cm_indiv_contact.CUST_CONT_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setCustContId(Long custContId) {
        this.custContId = custContId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.PARTY_ID
     *
     * @return the value of cm_indiv_contact.PARTY_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getPartyId() {
        return partyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.PARTY_ID
     *
     * @param partyId the value for cm_indiv_contact.PARTY_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setPartyId(Long partyId) {
        this.partyId = partyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.CONT_ID
     *
     * @return the value of cm_indiv_contact.CONT_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getContId() {
        return contId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.CONT_ID
     *
     * @param contId the value for cm_indiv_contact.CONT_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setContId(Long contId) {
        this.contId = contId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.CUST_ID
     *
     * @return the value of cm_indiv_contact.CUST_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getCustId() {
        return custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.CUST_ID
     *
     * @param custId the value for cm_indiv_contact.CUST_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setCustId(Long custId) {
        this.custId = custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.PRIORY_LEVEL
     *
     * @return the value of cm_indiv_contact.PRIORY_LEVEL
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getPrioryLevel() {
        return prioryLevel;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.PRIORY_LEVEL
     *
     * @param prioryLevel the value for cm_indiv_contact.PRIORY_LEVEL
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setPrioryLevel(Long prioryLevel) {
        this.prioryLevel = prioryLevel;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.CONT_TYPE
     *
     * @return the value of cm_indiv_contact.CONT_TYPE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getContType() {
        return contType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.CONT_TYPE
     *
     * @param contType the value for cm_indiv_contact.CONT_TYPE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setContType(Long contType) {
        this.contType = contType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.STATE
     *
     * @return the value of cm_indiv_contact.STATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.STATE
     *
     * @param state the value for cm_indiv_contact.STATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.CREATE_OP_ID
     *
     * @return the value of cm_indiv_contact.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getCreateOpId() {
        return createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.CREATE_OP_ID
     *
     * @param createOpId the value for cm_indiv_contact.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setCreateOpId(Long createOpId) {
        this.createOpId = createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.CREATE_ORG_ID
     *
     * @return the value of cm_indiv_contact.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getCreateOrgId() {
        return createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.CREATE_ORG_ID
     *
     * @param createOrgId the value for cm_indiv_contact.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setCreateOrgId(Long createOrgId) {
        this.createOrgId = createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.OP_ID
     *
     * @return the value of cm_indiv_contact.OP_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.OP_ID
     *
     * @param opId the value for cm_indiv_contact.OP_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.ORG_ID
     *
     * @return the value of cm_indiv_contact.ORG_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.ORG_ID
     *
     * @param orgId the value for cm_indiv_contact.ORG_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.DONE_CODE
     *
     * @return the value of cm_indiv_contact.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Long getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.DONE_CODE
     *
     * @param doneCode the value for cm_indiv_contact.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setDoneCode(Long doneCode) {
        this.doneCode = doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.CREATE_DATE
     *
     * @return the value of cm_indiv_contact.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.CREATE_DATE
     *
     * @param createDate the value for cm_indiv_contact.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.DONE_DATE
     *
     * @return the value of cm_indiv_contact.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.DONE_DATE
     *
     * @param doneDate the value for cm_indiv_contact.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.EFFECTIVE_DATE
     *
     * @return the value of cm_indiv_contact.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Date getEffectiveDate() {
        return effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.EFFECTIVE_DATE
     *
     * @param effectiveDate the value for cm_indiv_contact.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.EXPIRE_DATE
     *
     * @return the value of cm_indiv_contact.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public Date getExpireDate() {
        return expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.EXPIRE_DATE
     *
     * @param expireDate the value for cm_indiv_contact.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.REGION_ID
     *
     * @return the value of cm_indiv_contact.REGION_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public String getRegionId() {
        return regionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.REGION_ID
     *
     * @param regionId the value for cm_indiv_contact.REGION_ID
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setRegionId(String regionId) {
        this.regionId = regionId == null ? null : regionId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_indiv_contact.REMARKS
     *
     * @return the value of cm_indiv_contact.REMARKS
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_indiv_contact.REMARKS
     *
     * @param remarks the value for cm_indiv_contact.REMARKS
     *
     * @mbg.generated Tue May 28 20:27:19 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}