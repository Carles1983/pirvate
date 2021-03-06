package com.aii.crm.loyalty.web.persistence.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class IntegralPlanExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public IntegralPlanExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
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
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
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

        public Criteria andIntegralPlanIdIsNull() {
            addCriterion("integral_plan_id is null");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdIsNotNull() {
            addCriterion("integral_plan_id is not null");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdEqualTo(Long value) {
            addCriterion("integral_plan_id =", value, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdNotEqualTo(Long value) {
            addCriterion("integral_plan_id <>", value, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdGreaterThan(Long value) {
            addCriterion("integral_plan_id >", value, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdGreaterThanOrEqualTo(Long value) {
            addCriterion("integral_plan_id >=", value, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdLessThan(Long value) {
            addCriterion("integral_plan_id <", value, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdLessThanOrEqualTo(Long value) {
            addCriterion("integral_plan_id <=", value, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdIn(List<Long> values) {
            addCriterion("integral_plan_id in", values, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdNotIn(List<Long> values) {
            addCriterion("integral_plan_id not in", values, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdBetween(Long value1, Long value2) {
            addCriterion("integral_plan_id between", value1, value2, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanIdNotBetween(Long value1, Long value2) {
            addCriterion("integral_plan_id not between", value1, value2, "integralPlanId");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeIsNull() {
            addCriterion("integral_plan_type is null");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeIsNotNull() {
            addCriterion("integral_plan_type is not null");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeEqualTo(Long value) {
            addCriterion("integral_plan_type =", value, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeNotEqualTo(Long value) {
            addCriterion("integral_plan_type <>", value, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeGreaterThan(Long value) {
            addCriterion("integral_plan_type >", value, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeGreaterThanOrEqualTo(Long value) {
            addCriterion("integral_plan_type >=", value, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeLessThan(Long value) {
            addCriterion("integral_plan_type <", value, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeLessThanOrEqualTo(Long value) {
            addCriterion("integral_plan_type <=", value, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeIn(List<Long> values) {
            addCriterion("integral_plan_type in", values, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeNotIn(List<Long> values) {
            addCriterion("integral_plan_type not in", values, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeBetween(Long value1, Long value2) {
            addCriterion("integral_plan_type between", value1, value2, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanTypeNotBetween(Long value1, Long value2) {
            addCriterion("integral_plan_type not between", value1, value2, "integralPlanType");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameIsNull() {
            addCriterion("integral_plan_name is null");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameIsNotNull() {
            addCriterion("integral_plan_name is not null");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameEqualTo(String value) {
            addCriterion("integral_plan_name =", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameNotEqualTo(String value) {
            addCriterion("integral_plan_name <>", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameGreaterThan(String value) {
            addCriterion("integral_plan_name >", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameGreaterThanOrEqualTo(String value) {
            addCriterion("integral_plan_name >=", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameLessThan(String value) {
            addCriterion("integral_plan_name <", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameLessThanOrEqualTo(String value) {
            addCriterion("integral_plan_name <=", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameLike(String value) {
            addCriterion("integral_plan_name like", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameNotLike(String value) {
            addCriterion("integral_plan_name not like", value, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameIn(List<String> values) {
            addCriterion("integral_plan_name in", values, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameNotIn(List<String> values) {
            addCriterion("integral_plan_name not in", values, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameBetween(String value1, String value2) {
            addCriterion("integral_plan_name between", value1, value2, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andIntegralPlanNameNotBetween(String value1, String value2) {
            addCriterion("integral_plan_name not between", value1, value2, "integralPlanName");
            return (Criteria) this;
        }

        public Criteria andPriorityIsNull() {
            addCriterion("priority is null");
            return (Criteria) this;
        }

        public Criteria andPriorityIsNotNull() {
            addCriterion("priority is not null");
            return (Criteria) this;
        }

        public Criteria andPriorityEqualTo(Long value) {
            addCriterion("priority =", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityNotEqualTo(Long value) {
            addCriterion("priority <>", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityGreaterThan(Long value) {
            addCriterion("priority >", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityGreaterThanOrEqualTo(Long value) {
            addCriterion("priority >=", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityLessThan(Long value) {
            addCriterion("priority <", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityLessThanOrEqualTo(Long value) {
            addCriterion("priority <=", value, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityIn(List<Long> values) {
            addCriterion("priority in", values, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityNotIn(List<Long> values) {
            addCriterion("priority not in", values, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityBetween(Long value1, Long value2) {
            addCriterion("priority between", value1, value2, "priority");
            return (Criteria) this;
        }

        public Criteria andPriorityNotBetween(Long value1, Long value2) {
            addCriterion("priority not between", value1, value2, "priority");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Long value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Long value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Long value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Long value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Long value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Long value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Long> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Long> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Long value1, Long value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Long value1, Long value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNull() {
            addCriterion("create_date is null");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNotNull() {
            addCriterion("create_date is not null");
            return (Criteria) this;
        }

        public Criteria andCreateDateEqualTo(Date value) {
            addCriterion("create_date =", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotEqualTo(Date value) {
            addCriterion("create_date <>", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThan(Date value) {
            addCriterion("create_date >", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThanOrEqualTo(Date value) {
            addCriterion("create_date >=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThan(Date value) {
            addCriterion("create_date <", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThanOrEqualTo(Date value) {
            addCriterion("create_date <=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateIn(List<Date> values) {
            addCriterion("create_date in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotIn(List<Date> values) {
            addCriterion("create_date not in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateBetween(Date value1, Date value2) {
            addCriterion("create_date between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotBetween(Date value1, Date value2) {
            addCriterion("create_date not between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andValidDateIsNull() {
            addCriterion("valid_date is null");
            return (Criteria) this;
        }

        public Criteria andValidDateIsNotNull() {
            addCriterion("valid_date is not null");
            return (Criteria) this;
        }

        public Criteria andValidDateEqualTo(Date value) {
            addCriterion("valid_date =", value, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateNotEqualTo(Date value) {
            addCriterion("valid_date <>", value, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateGreaterThan(Date value) {
            addCriterion("valid_date >", value, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateGreaterThanOrEqualTo(Date value) {
            addCriterion("valid_date >=", value, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateLessThan(Date value) {
            addCriterion("valid_date <", value, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateLessThanOrEqualTo(Date value) {
            addCriterion("valid_date <=", value, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateIn(List<Date> values) {
            addCriterion("valid_date in", values, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateNotIn(List<Date> values) {
            addCriterion("valid_date not in", values, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateBetween(Date value1, Date value2) {
            addCriterion("valid_date between", value1, value2, "validDate");
            return (Criteria) this;
        }

        public Criteria andValidDateNotBetween(Date value1, Date value2) {
            addCriterion("valid_date not between", value1, value2, "validDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateIsNull() {
            addCriterion("expire_date is null");
            return (Criteria) this;
        }

        public Criteria andExpireDateIsNotNull() {
            addCriterion("expire_date is not null");
            return (Criteria) this;
        }

        public Criteria andExpireDateEqualTo(Date value) {
            addCriterion("expire_date =", value, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateNotEqualTo(Date value) {
            addCriterion("expire_date <>", value, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateGreaterThan(Date value) {
            addCriterion("expire_date >", value, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateGreaterThanOrEqualTo(Date value) {
            addCriterion("expire_date >=", value, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateLessThan(Date value) {
            addCriterion("expire_date <", value, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateLessThanOrEqualTo(Date value) {
            addCriterion("expire_date <=", value, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateIn(List<Date> values) {
            addCriterion("expire_date in", values, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateNotIn(List<Date> values) {
            addCriterion("expire_date not in", values, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateBetween(Date value1, Date value2) {
            addCriterion("expire_date between", value1, value2, "expireDate");
            return (Criteria) this;
        }

        public Criteria andExpireDateNotBetween(Date value1, Date value2) {
            addCriterion("expire_date not between", value1, value2, "expireDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateIsNull() {
            addCriterion("done_date is null");
            return (Criteria) this;
        }

        public Criteria andDoneDateIsNotNull() {
            addCriterion("done_date is not null");
            return (Criteria) this;
        }

        public Criteria andDoneDateEqualTo(Date value) {
            addCriterion("done_date =", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateNotEqualTo(Date value) {
            addCriterion("done_date <>", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateGreaterThan(Date value) {
            addCriterion("done_date >", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateGreaterThanOrEqualTo(Date value) {
            addCriterion("done_date >=", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateLessThan(Date value) {
            addCriterion("done_date <", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateLessThanOrEqualTo(Date value) {
            addCriterion("done_date <=", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateIn(List<Date> values) {
            addCriterion("done_date in", values, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateNotIn(List<Date> values) {
            addCriterion("done_date not in", values, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateBetween(Date value1, Date value2) {
            addCriterion("done_date between", value1, value2, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateNotBetween(Date value1, Date value2) {
            addCriterion("done_date not between", value1, value2, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneCodeIsNull() {
            addCriterion("done_code is null");
            return (Criteria) this;
        }

        public Criteria andDoneCodeIsNotNull() {
            addCriterion("done_code is not null");
            return (Criteria) this;
        }

        public Criteria andDoneCodeEqualTo(Long value) {
            addCriterion("done_code =", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeNotEqualTo(Long value) {
            addCriterion("done_code <>", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeGreaterThan(Long value) {
            addCriterion("done_code >", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeGreaterThanOrEqualTo(Long value) {
            addCriterion("done_code >=", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeLessThan(Long value) {
            addCriterion("done_code <", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeLessThanOrEqualTo(Long value) {
            addCriterion("done_code <=", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeIn(List<Long> values) {
            addCriterion("done_code in", values, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeNotIn(List<Long> values) {
            addCriterion("done_code not in", values, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeBetween(Long value1, Long value2) {
            addCriterion("done_code between", value1, value2, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeNotBetween(Long value1, Long value2) {
            addCriterion("done_code not between", value1, value2, "doneCode");
            return (Criteria) this;
        }

        public Criteria andOpIdIsNull() {
            addCriterion("op_id is null");
            return (Criteria) this;
        }

        public Criteria andOpIdIsNotNull() {
            addCriterion("op_id is not null");
            return (Criteria) this;
        }

        public Criteria andOpIdEqualTo(Long value) {
            addCriterion("op_id =", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdNotEqualTo(Long value) {
            addCriterion("op_id <>", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdGreaterThan(Long value) {
            addCriterion("op_id >", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdGreaterThanOrEqualTo(Long value) {
            addCriterion("op_id >=", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdLessThan(Long value) {
            addCriterion("op_id <", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdLessThanOrEqualTo(Long value) {
            addCriterion("op_id <=", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdIn(List<Long> values) {
            addCriterion("op_id in", values, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdNotIn(List<Long> values) {
            addCriterion("op_id not in", values, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdBetween(Long value1, Long value2) {
            addCriterion("op_id between", value1, value2, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdNotBetween(Long value1, Long value2) {
            addCriterion("op_id not between", value1, value2, "opId");
            return (Criteria) this;
        }

        public Criteria andOrgIdIsNull() {
            addCriterion("org_id is null");
            return (Criteria) this;
        }

        public Criteria andOrgIdIsNotNull() {
            addCriterion("org_id is not null");
            return (Criteria) this;
        }

        public Criteria andOrgIdEqualTo(Long value) {
            addCriterion("org_id =", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdNotEqualTo(Long value) {
            addCriterion("org_id <>", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdGreaterThan(Long value) {
            addCriterion("org_id >", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdGreaterThanOrEqualTo(Long value) {
            addCriterion("org_id >=", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdLessThan(Long value) {
            addCriterion("org_id <", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdLessThanOrEqualTo(Long value) {
            addCriterion("org_id <=", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdIn(List<Long> values) {
            addCriterion("org_id in", values, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdNotIn(List<Long> values) {
            addCriterion("org_id not in", values, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdBetween(Long value1, Long value2) {
            addCriterion("org_id between", value1, value2, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdNotBetween(Long value1, Long value2) {
            addCriterion("org_id not between", value1, value2, "orgId");
            return (Criteria) this;
        }

        public Criteria andNotesIsNull() {
            addCriterion("notes is null");
            return (Criteria) this;
        }

        public Criteria andNotesIsNotNull() {
            addCriterion("notes is not null");
            return (Criteria) this;
        }

        public Criteria andNotesEqualTo(String value) {
            addCriterion("notes =", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesNotEqualTo(String value) {
            addCriterion("notes <>", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesGreaterThan(String value) {
            addCriterion("notes >", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesGreaterThanOrEqualTo(String value) {
            addCriterion("notes >=", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesLessThan(String value) {
            addCriterion("notes <", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesLessThanOrEqualTo(String value) {
            addCriterion("notes <=", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesLike(String value) {
            addCriterion("notes like", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesNotLike(String value) {
            addCriterion("notes not like", value, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesIn(List<String> values) {
            addCriterion("notes in", values, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesNotIn(List<String> values) {
            addCriterion("notes not in", values, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesBetween(String value1, String value2) {
            addCriterion("notes between", value1, value2, "notes");
            return (Criteria) this;
        }

        public Criteria andNotesNotBetween(String value1, String value2) {
            addCriterion("notes not between", value1, value2, "notes");
            return (Criteria) this;
        }

        public Criteria andTenantIdIsNull() {
            addCriterion("tenant_id is null");
            return (Criteria) this;
        }

        public Criteria andTenantIdIsNotNull() {
            addCriterion("tenant_id is not null");
            return (Criteria) this;
        }

        public Criteria andTenantIdEqualTo(String value) {
            addCriterion("tenant_id =", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotEqualTo(String value) {
            addCriterion("tenant_id <>", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdGreaterThan(String value) {
            addCriterion("tenant_id >", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdGreaterThanOrEqualTo(String value) {
            addCriterion("tenant_id >=", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLessThan(String value) {
            addCriterion("tenant_id <", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLessThanOrEqualTo(String value) {
            addCriterion("tenant_id <=", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLike(String value) {
            addCriterion("tenant_id like", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotLike(String value) {
            addCriterion("tenant_id not like", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdIn(List<String> values) {
            addCriterion("tenant_id in", values, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotIn(List<String> values) {
            addCriterion("tenant_id not in", values, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdBetween(String value1, String value2) {
            addCriterion("tenant_id between", value1, value2, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotBetween(String value1, String value2) {
            addCriterion("tenant_id not between", value1, value2, "tenantId");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table integral_plan
     *
     * @mbg.generated do_not_delete_during_merge Wed May 29 09:46:44 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
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