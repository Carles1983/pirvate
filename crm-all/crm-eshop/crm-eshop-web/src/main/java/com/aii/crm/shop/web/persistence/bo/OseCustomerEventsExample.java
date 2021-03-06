package com.aii.crm.shop.web.persistence.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OseCustomerEventsExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public OseCustomerEventsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andEventIdIsNull() {
            addCriterion("event_id is null");
            return (Criteria) this;
        }

        public Criteria andEventIdIsNotNull() {
            addCriterion("event_id is not null");
            return (Criteria) this;
        }

        public Criteria andEventIdEqualTo(String value) {
            addCriterion("event_id =", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdNotEqualTo(String value) {
            addCriterion("event_id <>", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdGreaterThan(String value) {
            addCriterion("event_id >", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdGreaterThanOrEqualTo(String value) {
            addCriterion("event_id >=", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdLessThan(String value) {
            addCriterion("event_id <", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdLessThanOrEqualTo(String value) {
            addCriterion("event_id <=", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdLike(String value) {
            addCriterion("event_id like", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdNotLike(String value) {
            addCriterion("event_id not like", value, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdIn(List<String> values) {
            addCriterion("event_id in", values, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdNotIn(List<String> values) {
            addCriterion("event_id not in", values, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdBetween(String value1, String value2) {
            addCriterion("event_id between", value1, value2, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventIdNotBetween(String value1, String value2) {
            addCriterion("event_id not between", value1, value2, "eventId");
            return (Criteria) this;
        }

        public Criteria andEventTimeIsNull() {
            addCriterion("event_time is null");
            return (Criteria) this;
        }

        public Criteria andEventTimeIsNotNull() {
            addCriterion("event_time is not null");
            return (Criteria) this;
        }

        public Criteria andEventTimeEqualTo(Date value) {
            addCriterion("event_time =", value, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeNotEqualTo(Date value) {
            addCriterion("event_time <>", value, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeGreaterThan(Date value) {
            addCriterion("event_time >", value, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("event_time >=", value, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeLessThan(Date value) {
            addCriterion("event_time <", value, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeLessThanOrEqualTo(Date value) {
            addCriterion("event_time <=", value, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeIn(List<Date> values) {
            addCriterion("event_time in", values, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeNotIn(List<Date> values) {
            addCriterion("event_time not in", values, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeBetween(Date value1, Date value2) {
            addCriterion("event_time between", value1, value2, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTimeNotBetween(Date value1, Date value2) {
            addCriterion("event_time not between", value1, value2, "eventTime");
            return (Criteria) this;
        }

        public Criteria andEventTypeIsNull() {
            addCriterion("event_type is null");
            return (Criteria) this;
        }

        public Criteria andEventTypeIsNotNull() {
            addCriterion("event_type is not null");
            return (Criteria) this;
        }

        public Criteria andEventTypeEqualTo(Integer value) {
            addCriterion("event_type =", value, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeNotEqualTo(Integer value) {
            addCriterion("event_type <>", value, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeGreaterThan(Integer value) {
            addCriterion("event_type >", value, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("event_type >=", value, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeLessThan(Integer value) {
            addCriterion("event_type <", value, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeLessThanOrEqualTo(Integer value) {
            addCriterion("event_type <=", value, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeIn(List<Integer> values) {
            addCriterion("event_type in", values, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeNotIn(List<Integer> values) {
            addCriterion("event_type not in", values, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeBetween(Integer value1, Integer value2) {
            addCriterion("event_type between", value1, value2, "eventType");
            return (Criteria) this;
        }

        public Criteria andEventTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("event_type not between", value1, value2, "eventType");
            return (Criteria) this;
        }

        public Criteria andCustomerIdIsNull() {
            addCriterion("customer_id is null");
            return (Criteria) this;
        }

        public Criteria andCustomerIdIsNotNull() {
            addCriterion("customer_id is not null");
            return (Criteria) this;
        }

        public Criteria andCustomerIdEqualTo(String value) {
            addCriterion("customer_id =", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdNotEqualTo(String value) {
            addCriterion("customer_id <>", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdGreaterThan(String value) {
            addCriterion("customer_id >", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdGreaterThanOrEqualTo(String value) {
            addCriterion("customer_id >=", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdLessThan(String value) {
            addCriterion("customer_id <", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdLessThanOrEqualTo(String value) {
            addCriterion("customer_id <=", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdLike(String value) {
            addCriterion("customer_id like", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdNotLike(String value) {
            addCriterion("customer_id not like", value, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdIn(List<String> values) {
            addCriterion("customer_id in", values, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdNotIn(List<String> values) {
            addCriterion("customer_id not in", values, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdBetween(String value1, String value2) {
            addCriterion("customer_id between", value1, value2, "customerId");
            return (Criteria) this;
        }

        public Criteria andCustomerIdNotBetween(String value1, String value2) {
            addCriterion("customer_id not between", value1, value2, "customerId");
            return (Criteria) this;
        }

        public Criteria andAgentIdIsNull() {
            addCriterion("agent_id is null");
            return (Criteria) this;
        }

        public Criteria andAgentIdIsNotNull() {
            addCriterion("agent_id is not null");
            return (Criteria) this;
        }

        public Criteria andAgentIdEqualTo(String value) {
            addCriterion("agent_id =", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdNotEqualTo(String value) {
            addCriterion("agent_id <>", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdGreaterThan(String value) {
            addCriterion("agent_id >", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdGreaterThanOrEqualTo(String value) {
            addCriterion("agent_id >=", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdLessThan(String value) {
            addCriterion("agent_id <", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdLessThanOrEqualTo(String value) {
            addCriterion("agent_id <=", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdLike(String value) {
            addCriterion("agent_id like", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdNotLike(String value) {
            addCriterion("agent_id not like", value, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdIn(List<String> values) {
            addCriterion("agent_id in", values, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdNotIn(List<String> values) {
            addCriterion("agent_id not in", values, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdBetween(String value1, String value2) {
            addCriterion("agent_id between", value1, value2, "agentId");
            return (Criteria) this;
        }

        public Criteria andAgentIdNotBetween(String value1, String value2) {
            addCriterion("agent_id not between", value1, value2, "agentId");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionIsNull() {
            addCriterion("event_description is null");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionIsNotNull() {
            addCriterion("event_description is not null");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionEqualTo(String value) {
            addCriterion("event_description =", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionNotEqualTo(String value) {
            addCriterion("event_description <>", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionGreaterThan(String value) {
            addCriterion("event_description >", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("event_description >=", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionLessThan(String value) {
            addCriterion("event_description <", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionLessThanOrEqualTo(String value) {
            addCriterion("event_description <=", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionLike(String value) {
            addCriterion("event_description like", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionNotLike(String value) {
            addCriterion("event_description not like", value, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionIn(List<String> values) {
            addCriterion("event_description in", values, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionNotIn(List<String> values) {
            addCriterion("event_description not in", values, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionBetween(String value1, String value2) {
            addCriterion("event_description between", value1, value2, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventDescriptionNotBetween(String value1, String value2) {
            addCriterion("event_description not between", value1, value2, "eventDescription");
            return (Criteria) this;
        }

        public Criteria andEventExtensionIsNull() {
            addCriterion("event_extension is null");
            return (Criteria) this;
        }

        public Criteria andEventExtensionIsNotNull() {
            addCriterion("event_extension is not null");
            return (Criteria) this;
        }

        public Criteria andEventExtensionEqualTo(String value) {
            addCriterion("event_extension =", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionNotEqualTo(String value) {
            addCriterion("event_extension <>", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionGreaterThan(String value) {
            addCriterion("event_extension >", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionGreaterThanOrEqualTo(String value) {
            addCriterion("event_extension >=", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionLessThan(String value) {
            addCriterion("event_extension <", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionLessThanOrEqualTo(String value) {
            addCriterion("event_extension <=", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionLike(String value) {
            addCriterion("event_extension like", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionNotLike(String value) {
            addCriterion("event_extension not like", value, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionIn(List<String> values) {
            addCriterion("event_extension in", values, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionNotIn(List<String> values) {
            addCriterion("event_extension not in", values, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionBetween(String value1, String value2) {
            addCriterion("event_extension between", value1, value2, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andEventExtensionNotBetween(String value1, String value2) {
            addCriterion("event_extension not between", value1, value2, "eventExtension");
            return (Criteria) this;
        }

        public Criteria andRes1IsNull() {
            addCriterion("RES1 is null");
            return (Criteria) this;
        }

        public Criteria andRes1IsNotNull() {
            addCriterion("RES1 is not null");
            return (Criteria) this;
        }

        public Criteria andRes1EqualTo(String value) {
            addCriterion("RES1 =", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1NotEqualTo(String value) {
            addCriterion("RES1 <>", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1GreaterThan(String value) {
            addCriterion("RES1 >", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1GreaterThanOrEqualTo(String value) {
            addCriterion("RES1 >=", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1LessThan(String value) {
            addCriterion("RES1 <", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1LessThanOrEqualTo(String value) {
            addCriterion("RES1 <=", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1Like(String value) {
            addCriterion("RES1 like", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1NotLike(String value) {
            addCriterion("RES1 not like", value, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1In(List<String> values) {
            addCriterion("RES1 in", values, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1NotIn(List<String> values) {
            addCriterion("RES1 not in", values, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1Between(String value1, String value2) {
            addCriterion("RES1 between", value1, value2, "res1");
            return (Criteria) this;
        }

        public Criteria andRes1NotBetween(String value1, String value2) {
            addCriterion("RES1 not between", value1, value2, "res1");
            return (Criteria) this;
        }

        public Criteria andRes2IsNull() {
            addCriterion("RES2 is null");
            return (Criteria) this;
        }

        public Criteria andRes2IsNotNull() {
            addCriterion("RES2 is not null");
            return (Criteria) this;
        }

        public Criteria andRes2EqualTo(String value) {
            addCriterion("RES2 =", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2NotEqualTo(String value) {
            addCriterion("RES2 <>", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2GreaterThan(String value) {
            addCriterion("RES2 >", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2GreaterThanOrEqualTo(String value) {
            addCriterion("RES2 >=", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2LessThan(String value) {
            addCriterion("RES2 <", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2LessThanOrEqualTo(String value) {
            addCriterion("RES2 <=", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2Like(String value) {
            addCriterion("RES2 like", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2NotLike(String value) {
            addCriterion("RES2 not like", value, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2In(List<String> values) {
            addCriterion("RES2 in", values, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2NotIn(List<String> values) {
            addCriterion("RES2 not in", values, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2Between(String value1, String value2) {
            addCriterion("RES2 between", value1, value2, "res2");
            return (Criteria) this;
        }

        public Criteria andRes2NotBetween(String value1, String value2) {
            addCriterion("RES2 not between", value1, value2, "res2");
            return (Criteria) this;
        }

        public Criteria andRes3IsNull() {
            addCriterion("RES3 is null");
            return (Criteria) this;
        }

        public Criteria andRes3IsNotNull() {
            addCriterion("RES3 is not null");
            return (Criteria) this;
        }

        public Criteria andRes3EqualTo(String value) {
            addCriterion("RES3 =", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3NotEqualTo(String value) {
            addCriterion("RES3 <>", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3GreaterThan(String value) {
            addCriterion("RES3 >", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3GreaterThanOrEqualTo(String value) {
            addCriterion("RES3 >=", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3LessThan(String value) {
            addCriterion("RES3 <", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3LessThanOrEqualTo(String value) {
            addCriterion("RES3 <=", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3Like(String value) {
            addCriterion("RES3 like", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3NotLike(String value) {
            addCriterion("RES3 not like", value, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3In(List<String> values) {
            addCriterion("RES3 in", values, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3NotIn(List<String> values) {
            addCriterion("RES3 not in", values, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3Between(String value1, String value2) {
            addCriterion("RES3 between", value1, value2, "res3");
            return (Criteria) this;
        }

        public Criteria andRes3NotBetween(String value1, String value2) {
            addCriterion("RES3 not between", value1, value2, "res3");
            return (Criteria) this;
        }

        public Criteria andRes4IsNull() {
            addCriterion("RES4 is null");
            return (Criteria) this;
        }

        public Criteria andRes4IsNotNull() {
            addCriterion("RES4 is not null");
            return (Criteria) this;
        }

        public Criteria andRes4EqualTo(String value) {
            addCriterion("RES4 =", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4NotEqualTo(String value) {
            addCriterion("RES4 <>", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4GreaterThan(String value) {
            addCriterion("RES4 >", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4GreaterThanOrEqualTo(String value) {
            addCriterion("RES4 >=", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4LessThan(String value) {
            addCriterion("RES4 <", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4LessThanOrEqualTo(String value) {
            addCriterion("RES4 <=", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4Like(String value) {
            addCriterion("RES4 like", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4NotLike(String value) {
            addCriterion("RES4 not like", value, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4In(List<String> values) {
            addCriterion("RES4 in", values, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4NotIn(List<String> values) {
            addCriterion("RES4 not in", values, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4Between(String value1, String value2) {
            addCriterion("RES4 between", value1, value2, "res4");
            return (Criteria) this;
        }

        public Criteria andRes4NotBetween(String value1, String value2) {
            addCriterion("RES4 not between", value1, value2, "res4");
            return (Criteria) this;
        }

        public Criteria andTenantIdIsNull() {
            addCriterion("TENANT_ID is null");
            return (Criteria) this;
        }

        public Criteria andTenantIdIsNotNull() {
            addCriterion("TENANT_ID is not null");
            return (Criteria) this;
        }

        public Criteria andTenantIdEqualTo(String value) {
            addCriterion("TENANT_ID =", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotEqualTo(String value) {
            addCriterion("TENANT_ID <>", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdGreaterThan(String value) {
            addCriterion("TENANT_ID >", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdGreaterThanOrEqualTo(String value) {
            addCriterion("TENANT_ID >=", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLessThan(String value) {
            addCriterion("TENANT_ID <", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLessThanOrEqualTo(String value) {
            addCriterion("TENANT_ID <=", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLike(String value) {
            addCriterion("TENANT_ID like", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotLike(String value) {
            addCriterion("TENANT_ID not like", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdIn(List<String> values) {
            addCriterion("TENANT_ID in", values, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotIn(List<String> values) {
            addCriterion("TENANT_ID not in", values, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdBetween(String value1, String value2) {
            addCriterion("TENANT_ID between", value1, value2, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotBetween(String value1, String value2) {
            addCriterion("TENANT_ID not between", value1, value2, "tenantId");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNull() {
            addCriterion("REMARKS is null");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNotNull() {
            addCriterion("REMARKS is not null");
            return (Criteria) this;
        }

        public Criteria andRemarksEqualTo(String value) {
            addCriterion("REMARKS =", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotEqualTo(String value) {
            addCriterion("REMARKS <>", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThan(String value) {
            addCriterion("REMARKS >", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("REMARKS >=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThan(String value) {
            addCriterion("REMARKS <", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThanOrEqualTo(String value) {
            addCriterion("REMARKS <=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLike(String value) {
            addCriterion("REMARKS like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotLike(String value) {
            addCriterion("REMARKS not like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksIn(List<String> values) {
            addCriterion("REMARKS in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotIn(List<String> values) {
            addCriterion("REMARKS not in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksBetween(String value1, String value2) {
            addCriterion("REMARKS between", value1, value2, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotBetween(String value1, String value2) {
            addCriterion("REMARKS not between", value1, value2, "remarks");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ose_customer_events
     *
     * @mbg.generated do_not_delete_during_merge Wed May 29 09:24:24 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ose_customer_events
     *
     * @mbg.generated Wed May 29 09:24:24 CST 2019
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}