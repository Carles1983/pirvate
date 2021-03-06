package com.aii.crm.shop.web.persistence.bo;

import java.util.Date;

public class OseCustomerEvents {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.event_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String eventId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.event_time
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private Date eventTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.event_type
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private Integer eventType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.customer_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String customerId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.agent_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String agentId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.event_description
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String eventDescription;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.event_extension
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String eventExtension;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.RES1
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String res1;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.RES2
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String res2;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.RES3
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String res3;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.RES4
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String res4;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.TENANT_ID
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String tenantId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ose_customer_events.REMARKS
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    private String remarks;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.event_id
     *
     * @return the value of ose_customer_events.event_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getEventId() {
        return eventId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.event_id
     *
     * @param eventId the value for ose_customer_events.event_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setEventId(String eventId) {
        this.eventId = eventId == null ? null : eventId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.event_time
     *
     * @return the value of ose_customer_events.event_time
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public Date getEventTime() {
        return eventTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.event_time
     *
     * @param eventTime the value for ose_customer_events.event_time
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setEventTime(Date eventTime) {
        this.eventTime = eventTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.event_type
     *
     * @return the value of ose_customer_events.event_type
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public Integer getEventType() {
        return eventType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.event_type
     *
     * @param eventType the value for ose_customer_events.event_type
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setEventType(Integer eventType) {
        this.eventType = eventType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.customer_id
     *
     * @return the value of ose_customer_events.customer_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getCustomerId() {
        return customerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.customer_id
     *
     * @param customerId the value for ose_customer_events.customer_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setCustomerId(String customerId) {
        this.customerId = customerId == null ? null : customerId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.agent_id
     *
     * @return the value of ose_customer_events.agent_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getAgentId() {
        return agentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.agent_id
     *
     * @param agentId the value for ose_customer_events.agent_id
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setAgentId(String agentId) {
        this.agentId = agentId == null ? null : agentId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.event_description
     *
     * @return the value of ose_customer_events.event_description
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getEventDescription() {
        return eventDescription;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.event_description
     *
     * @param eventDescription the value for ose_customer_events.event_description
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setEventDescription(String eventDescription) {
        this.eventDescription = eventDescription == null ? null : eventDescription.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.event_extension
     *
     * @return the value of ose_customer_events.event_extension
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getEventExtension() {
        return eventExtension;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.event_extension
     *
     * @param eventExtension the value for ose_customer_events.event_extension
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setEventExtension(String eventExtension) {
        this.eventExtension = eventExtension == null ? null : eventExtension.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.RES1
     *
     * @return the value of ose_customer_events.RES1
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getRes1() {
        return res1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.RES1
     *
     * @param res1 the value for ose_customer_events.RES1
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setRes1(String res1) {
        this.res1 = res1 == null ? null : res1.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.RES2
     *
     * @return the value of ose_customer_events.RES2
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getRes2() {
        return res2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.RES2
     *
     * @param res2 the value for ose_customer_events.RES2
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setRes2(String res2) {
        this.res2 = res2 == null ? null : res2.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.RES3
     *
     * @return the value of ose_customer_events.RES3
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getRes3() {
        return res3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.RES3
     *
     * @param res3 the value for ose_customer_events.RES3
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setRes3(String res3) {
        this.res3 = res3 == null ? null : res3.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.RES4
     *
     * @return the value of ose_customer_events.RES4
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getRes4() {
        return res4;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.RES4
     *
     * @param res4 the value for ose_customer_events.RES4
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setRes4(String res4) {
        this.res4 = res4 == null ? null : res4.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.TENANT_ID
     *
     * @return the value of ose_customer_events.TENANT_ID
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getTenantId() {
        return tenantId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.TENANT_ID
     *
     * @param tenantId the value for ose_customer_events.TENANT_ID
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId == null ? null : tenantId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ose_customer_events.REMARKS
     *
     * @return the value of ose_customer_events.REMARKS
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ose_customer_events.REMARKS
     *
     * @param remarks the value for ose_customer_events.REMARKS
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}