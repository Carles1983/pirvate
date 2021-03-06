package com.aii.crm.cm.web.persistence.bo;

import java.util.Date;

public class CmPartyPermission {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.REL_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long relId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.PARTY_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long partyId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.PERMISSON_TYPE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long permissonType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.PERMISSION_VALUE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private String permissionValue;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.STATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long createOpId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long createOrgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.OP_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.ORG_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Long doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Date effectiveDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private Date expireDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.REGION_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private String regionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_permission.REMARKS
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    private String remarks;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.REL_ID
     *
     * @return the value of cm_party_permission.REL_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getRelId() {
        return relId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.REL_ID
     *
     * @param relId the value for cm_party_permission.REL_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setRelId(Long relId) {
        this.relId = relId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.PARTY_ID
     *
     * @return the value of cm_party_permission.PARTY_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getPartyId() {
        return partyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.PARTY_ID
     *
     * @param partyId the value for cm_party_permission.PARTY_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setPartyId(Long partyId) {
        this.partyId = partyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.PERMISSON_TYPE
     *
     * @return the value of cm_party_permission.PERMISSON_TYPE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getPermissonType() {
        return permissonType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.PERMISSON_TYPE
     *
     * @param permissonType the value for cm_party_permission.PERMISSON_TYPE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setPermissonType(Long permissonType) {
        this.permissonType = permissonType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.PERMISSION_VALUE
     *
     * @return the value of cm_party_permission.PERMISSION_VALUE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public String getPermissionValue() {
        return permissionValue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.PERMISSION_VALUE
     *
     * @param permissionValue the value for cm_party_permission.PERMISSION_VALUE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setPermissionValue(String permissionValue) {
        this.permissionValue = permissionValue == null ? null : permissionValue.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.STATE
     *
     * @return the value of cm_party_permission.STATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.STATE
     *
     * @param state the value for cm_party_permission.STATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.CREATE_OP_ID
     *
     * @return the value of cm_party_permission.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getCreateOpId() {
        return createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.CREATE_OP_ID
     *
     * @param createOpId the value for cm_party_permission.CREATE_OP_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setCreateOpId(Long createOpId) {
        this.createOpId = createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.CREATE_ORG_ID
     *
     * @return the value of cm_party_permission.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getCreateOrgId() {
        return createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.CREATE_ORG_ID
     *
     * @param createOrgId the value for cm_party_permission.CREATE_ORG_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setCreateOrgId(Long createOrgId) {
        this.createOrgId = createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.OP_ID
     *
     * @return the value of cm_party_permission.OP_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.OP_ID
     *
     * @param opId the value for cm_party_permission.OP_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.ORG_ID
     *
     * @return the value of cm_party_permission.ORG_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.ORG_ID
     *
     * @param orgId the value for cm_party_permission.ORG_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.DONE_CODE
     *
     * @return the value of cm_party_permission.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Long getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.DONE_CODE
     *
     * @param doneCode the value for cm_party_permission.DONE_CODE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setDoneCode(Long doneCode) {
        this.doneCode = doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.CREATE_DATE
     *
     * @return the value of cm_party_permission.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.CREATE_DATE
     *
     * @param createDate the value for cm_party_permission.CREATE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.DONE_DATE
     *
     * @return the value of cm_party_permission.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.DONE_DATE
     *
     * @param doneDate the value for cm_party_permission.DONE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.EFFECTIVE_DATE
     *
     * @return the value of cm_party_permission.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Date getEffectiveDate() {
        return effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.EFFECTIVE_DATE
     *
     * @param effectiveDate the value for cm_party_permission.EFFECTIVE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.EXPIRE_DATE
     *
     * @return the value of cm_party_permission.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public Date getExpireDate() {
        return expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.EXPIRE_DATE
     *
     * @param expireDate the value for cm_party_permission.EXPIRE_DATE
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.REGION_ID
     *
     * @return the value of cm_party_permission.REGION_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public String getRegionId() {
        return regionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.REGION_ID
     *
     * @param regionId the value for cm_party_permission.REGION_ID
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setRegionId(String regionId) {
        this.regionId = regionId == null ? null : regionId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_permission.REMARKS
     *
     * @return the value of cm_party_permission.REMARKS
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_permission.REMARKS
     *
     * @param remarks the value for cm_party_permission.REMARKS
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}