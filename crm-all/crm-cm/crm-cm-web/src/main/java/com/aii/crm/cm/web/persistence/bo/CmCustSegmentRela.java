package com.aii.crm.cm.web.persistence.bo;

import java.util.Date;

public class CmCustSegmentRela {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.RELA_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long relaId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.CUST_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long custId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.SEGMENT_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long segmentId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.IS_INHERITABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long isInheritable;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.IS_REVISABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long isRevisable;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.IS_CREDIT_CALCULATED
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long isCreditCalculated;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.IS_CREDIT_RECALCULATED
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long isCreditRecalculated;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.IS_APPROVABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long isApprovable;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.STATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long createOpId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long createOrgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.OP_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.ORG_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Date effectiveDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Date expireDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.REGION_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private String regionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.REMARKS
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private String remarks;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_cust_segment_rela.NOTICE_PERIOD
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    private Long noticePeriod;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.RELA_ID
     *
     * @return the value of cm_cust_segment_rela.RELA_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getRelaId() {
        return relaId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.RELA_ID
     *
     * @param relaId the value for cm_cust_segment_rela.RELA_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setRelaId(Long relaId) {
        this.relaId = relaId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.CUST_ID
     *
     * @return the value of cm_cust_segment_rela.CUST_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getCustId() {
        return custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.CUST_ID
     *
     * @param custId the value for cm_cust_segment_rela.CUST_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setCustId(Long custId) {
        this.custId = custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.SEGMENT_ID
     *
     * @return the value of cm_cust_segment_rela.SEGMENT_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getSegmentId() {
        return segmentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.SEGMENT_ID
     *
     * @param segmentId the value for cm_cust_segment_rela.SEGMENT_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setSegmentId(Long segmentId) {
        this.segmentId = segmentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.IS_INHERITABLE
     *
     * @return the value of cm_cust_segment_rela.IS_INHERITABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getIsInheritable() {
        return isInheritable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.IS_INHERITABLE
     *
     * @param isInheritable the value for cm_cust_segment_rela.IS_INHERITABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setIsInheritable(Long isInheritable) {
        this.isInheritable = isInheritable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.IS_REVISABLE
     *
     * @return the value of cm_cust_segment_rela.IS_REVISABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getIsRevisable() {
        return isRevisable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.IS_REVISABLE
     *
     * @param isRevisable the value for cm_cust_segment_rela.IS_REVISABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setIsRevisable(Long isRevisable) {
        this.isRevisable = isRevisable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.IS_CREDIT_CALCULATED
     *
     * @return the value of cm_cust_segment_rela.IS_CREDIT_CALCULATED
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getIsCreditCalculated() {
        return isCreditCalculated;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.IS_CREDIT_CALCULATED
     *
     * @param isCreditCalculated the value for cm_cust_segment_rela.IS_CREDIT_CALCULATED
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setIsCreditCalculated(Long isCreditCalculated) {
        this.isCreditCalculated = isCreditCalculated;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.IS_CREDIT_RECALCULATED
     *
     * @return the value of cm_cust_segment_rela.IS_CREDIT_RECALCULATED
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getIsCreditRecalculated() {
        return isCreditRecalculated;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.IS_CREDIT_RECALCULATED
     *
     * @param isCreditRecalculated the value for cm_cust_segment_rela.IS_CREDIT_RECALCULATED
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setIsCreditRecalculated(Long isCreditRecalculated) {
        this.isCreditRecalculated = isCreditRecalculated;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.IS_APPROVABLE
     *
     * @return the value of cm_cust_segment_rela.IS_APPROVABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getIsApprovable() {
        return isApprovable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.IS_APPROVABLE
     *
     * @param isApprovable the value for cm_cust_segment_rela.IS_APPROVABLE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setIsApprovable(Long isApprovable) {
        this.isApprovable = isApprovable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.STATE
     *
     * @return the value of cm_cust_segment_rela.STATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.STATE
     *
     * @param state the value for cm_cust_segment_rela.STATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.CREATE_OP_ID
     *
     * @return the value of cm_cust_segment_rela.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getCreateOpId() {
        return createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.CREATE_OP_ID
     *
     * @param createOpId the value for cm_cust_segment_rela.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setCreateOpId(Long createOpId) {
        this.createOpId = createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.CREATE_ORG_ID
     *
     * @return the value of cm_cust_segment_rela.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getCreateOrgId() {
        return createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.CREATE_ORG_ID
     *
     * @param createOrgId the value for cm_cust_segment_rela.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setCreateOrgId(Long createOrgId) {
        this.createOrgId = createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.OP_ID
     *
     * @return the value of cm_cust_segment_rela.OP_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.OP_ID
     *
     * @param opId the value for cm_cust_segment_rela.OP_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.ORG_ID
     *
     * @return the value of cm_cust_segment_rela.ORG_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.ORG_ID
     *
     * @param orgId the value for cm_cust_segment_rela.ORG_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.DONE_CODE
     *
     * @return the value of cm_cust_segment_rela.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.DONE_CODE
     *
     * @param doneCode the value for cm_cust_segment_rela.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setDoneCode(Long doneCode) {
        this.doneCode = doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.CREATE_DATE
     *
     * @return the value of cm_cust_segment_rela.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.CREATE_DATE
     *
     * @param createDate the value for cm_cust_segment_rela.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.DONE_DATE
     *
     * @return the value of cm_cust_segment_rela.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.DONE_DATE
     *
     * @param doneDate the value for cm_cust_segment_rela.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.EFFECTIVE_DATE
     *
     * @return the value of cm_cust_segment_rela.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Date getEffectiveDate() {
        return effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.EFFECTIVE_DATE
     *
     * @param effectiveDate the value for cm_cust_segment_rela.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.EXPIRE_DATE
     *
     * @return the value of cm_cust_segment_rela.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Date getExpireDate() {
        return expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.EXPIRE_DATE
     *
     * @param expireDate the value for cm_cust_segment_rela.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.REGION_ID
     *
     * @return the value of cm_cust_segment_rela.REGION_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public String getRegionId() {
        return regionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.REGION_ID
     *
     * @param regionId the value for cm_cust_segment_rela.REGION_ID
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setRegionId(String regionId) {
        this.regionId = regionId == null ? null : regionId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.REMARKS
     *
     * @return the value of cm_cust_segment_rela.REMARKS
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.REMARKS
     *
     * @param remarks the value for cm_cust_segment_rela.REMARKS
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_cust_segment_rela.NOTICE_PERIOD
     *
     * @return the value of cm_cust_segment_rela.NOTICE_PERIOD
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public Long getNoticePeriod() {
        return noticePeriod;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_cust_segment_rela.NOTICE_PERIOD
     *
     * @param noticePeriod the value for cm_cust_segment_rela.NOTICE_PERIOD
     *
     * @mbg.generated Tue May 28 20:13:28 CST 2019
     */
    public void setNoticePeriod(Long noticePeriod) {
        this.noticePeriod = noticePeriod;
    }
}