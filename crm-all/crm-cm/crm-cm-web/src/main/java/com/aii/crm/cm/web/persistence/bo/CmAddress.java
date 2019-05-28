package com.aii.crm.cm.web.persistence.bo;

import java.util.Date;

public class CmAddress {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.addr_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Long addrId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.zip_code
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private String zipCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.add_detail
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private String addDetail;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.priority
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private String priority;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.state
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.create_op_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Long createOpId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.create_org_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Long createOrgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.op_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.org_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.done_code
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Long doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.create_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.done_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.effective_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Date effectiveDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.expire_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private Date expireDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.region_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private String regionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_address.tenant_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    private String tenantId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.addr_id
     *
     * @return the value of cm_address.addr_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Long getAddrId() {
        return addrId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.addr_id
     *
     * @param addrId the value for cm_address.addr_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setAddrId(Long addrId) {
        this.addrId = addrId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.zip_code
     *
     * @return the value of cm_address.zip_code
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public String getZipCode() {
        return zipCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.zip_code
     *
     * @param zipCode the value for cm_address.zip_code
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setZipCode(String zipCode) {
        this.zipCode = zipCode == null ? null : zipCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.add_detail
     *
     * @return the value of cm_address.add_detail
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public String getAddDetail() {
        return addDetail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.add_detail
     *
     * @param addDetail the value for cm_address.add_detail
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setAddDetail(String addDetail) {
        this.addDetail = addDetail == null ? null : addDetail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.priority
     *
     * @return the value of cm_address.priority
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public String getPriority() {
        return priority;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.priority
     *
     * @param priority the value for cm_address.priority
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setPriority(String priority) {
        this.priority = priority == null ? null : priority.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.state
     *
     * @return the value of cm_address.state
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.state
     *
     * @param state the value for cm_address.state
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.create_op_id
     *
     * @return the value of cm_address.create_op_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Long getCreateOpId() {
        return createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.create_op_id
     *
     * @param createOpId the value for cm_address.create_op_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setCreateOpId(Long createOpId) {
        this.createOpId = createOpId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.create_org_id
     *
     * @return the value of cm_address.create_org_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Long getCreateOrgId() {
        return createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.create_org_id
     *
     * @param createOrgId the value for cm_address.create_org_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setCreateOrgId(Long createOrgId) {
        this.createOrgId = createOrgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.op_id
     *
     * @return the value of cm_address.op_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.op_id
     *
     * @param opId the value for cm_address.op_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.org_id
     *
     * @return the value of cm_address.org_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.org_id
     *
     * @param orgId the value for cm_address.org_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.done_code
     *
     * @return the value of cm_address.done_code
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Long getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.done_code
     *
     * @param doneCode the value for cm_address.done_code
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setDoneCode(Long doneCode) {
        this.doneCode = doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.create_date
     *
     * @return the value of cm_address.create_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.create_date
     *
     * @param createDate the value for cm_address.create_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.done_date
     *
     * @return the value of cm_address.done_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.done_date
     *
     * @param doneDate the value for cm_address.done_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.effective_date
     *
     * @return the value of cm_address.effective_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Date getEffectiveDate() {
        return effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.effective_date
     *
     * @param effectiveDate the value for cm_address.effective_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.expire_date
     *
     * @return the value of cm_address.expire_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public Date getExpireDate() {
        return expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.expire_date
     *
     * @param expireDate the value for cm_address.expire_date
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.region_id
     *
     * @return the value of cm_address.region_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public String getRegionId() {
        return regionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.region_id
     *
     * @param regionId the value for cm_address.region_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setRegionId(String regionId) {
        this.regionId = regionId == null ? null : regionId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_address.tenant_id
     *
     * @return the value of cm_address.tenant_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public String getTenantId() {
        return tenantId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_address.tenant_id
     *
     * @param tenantId the value for cm_address.tenant_id
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId == null ? null : tenantId.trim();
    }
}