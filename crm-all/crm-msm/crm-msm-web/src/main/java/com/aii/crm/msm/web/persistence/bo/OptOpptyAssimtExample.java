package com.aii.crm.msm.web.persistence.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OptOpptyAssimtExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public OptOpptyAssimtExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
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
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
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

        public Criteria andOpptyAssimtIdIsNull() {
            addCriterion("OPPTY_ASSIMT_ID is null");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdIsNotNull() {
            addCriterion("OPPTY_ASSIMT_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdEqualTo(Long value) {
            addCriterion("OPPTY_ASSIMT_ID =", value, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdNotEqualTo(Long value) {
            addCriterion("OPPTY_ASSIMT_ID <>", value, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdGreaterThan(Long value) {
            addCriterion("OPPTY_ASSIMT_ID >", value, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdGreaterThanOrEqualTo(Long value) {
            addCriterion("OPPTY_ASSIMT_ID >=", value, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdLessThan(Long value) {
            addCriterion("OPPTY_ASSIMT_ID <", value, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdLessThanOrEqualTo(Long value) {
            addCriterion("OPPTY_ASSIMT_ID <=", value, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdIn(List<Long> values) {
            addCriterion("OPPTY_ASSIMT_ID in", values, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdNotIn(List<Long> values) {
            addCriterion("OPPTY_ASSIMT_ID not in", values, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdBetween(Long value1, Long value2) {
            addCriterion("OPPTY_ASSIMT_ID between", value1, value2, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpptyAssimtIdNotBetween(Long value1, Long value2) {
            addCriterion("OPPTY_ASSIMT_ID not between", value1, value2, "opptyAssimtId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdIsNull() {
            addCriterion("OPPORTUNITY_ID is null");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdIsNotNull() {
            addCriterion("OPPORTUNITY_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdEqualTo(Long value) {
            addCriterion("OPPORTUNITY_ID =", value, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdNotEqualTo(Long value) {
            addCriterion("OPPORTUNITY_ID <>", value, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdGreaterThan(Long value) {
            addCriterion("OPPORTUNITY_ID >", value, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdGreaterThanOrEqualTo(Long value) {
            addCriterion("OPPORTUNITY_ID >=", value, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdLessThan(Long value) {
            addCriterion("OPPORTUNITY_ID <", value, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdLessThanOrEqualTo(Long value) {
            addCriterion("OPPORTUNITY_ID <=", value, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdIn(List<Long> values) {
            addCriterion("OPPORTUNITY_ID in", values, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdNotIn(List<Long> values) {
            addCriterion("OPPORTUNITY_ID not in", values, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdBetween(Long value1, Long value2) {
            addCriterion("OPPORTUNITY_ID between", value1, value2, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andOpportunityIdNotBetween(Long value1, Long value2) {
            addCriterion("OPPORTUNITY_ID not between", value1, value2, "opportunityId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdIsNull() {
            addCriterion("ASSIGN_ORG_ID is null");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdIsNotNull() {
            addCriterion("ASSIGN_ORG_ID is not null");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdEqualTo(Long value) {
            addCriterion("ASSIGN_ORG_ID =", value, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdNotEqualTo(Long value) {
            addCriterion("ASSIGN_ORG_ID <>", value, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdGreaterThan(Long value) {
            addCriterion("ASSIGN_ORG_ID >", value, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdGreaterThanOrEqualTo(Long value) {
            addCriterion("ASSIGN_ORG_ID >=", value, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdLessThan(Long value) {
            addCriterion("ASSIGN_ORG_ID <", value, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdLessThanOrEqualTo(Long value) {
            addCriterion("ASSIGN_ORG_ID <=", value, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdIn(List<Long> values) {
            addCriterion("ASSIGN_ORG_ID in", values, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdNotIn(List<Long> values) {
            addCriterion("ASSIGN_ORG_ID not in", values, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdBetween(Long value1, Long value2) {
            addCriterion("ASSIGN_ORG_ID between", value1, value2, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOrgIdNotBetween(Long value1, Long value2) {
            addCriterion("ASSIGN_ORG_ID not between", value1, value2, "assignOrgId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdIsNull() {
            addCriterion("ASSIGN_OPERATOR_ID is null");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdIsNotNull() {
            addCriterion("ASSIGN_OPERATOR_ID is not null");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdEqualTo(Long value) {
            addCriterion("ASSIGN_OPERATOR_ID =", value, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdNotEqualTo(Long value) {
            addCriterion("ASSIGN_OPERATOR_ID <>", value, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdGreaterThan(Long value) {
            addCriterion("ASSIGN_OPERATOR_ID >", value, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdGreaterThanOrEqualTo(Long value) {
            addCriterion("ASSIGN_OPERATOR_ID >=", value, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdLessThan(Long value) {
            addCriterion("ASSIGN_OPERATOR_ID <", value, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdLessThanOrEqualTo(Long value) {
            addCriterion("ASSIGN_OPERATOR_ID <=", value, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdIn(List<Long> values) {
            addCriterion("ASSIGN_OPERATOR_ID in", values, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdNotIn(List<Long> values) {
            addCriterion("ASSIGN_OPERATOR_ID not in", values, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdBetween(Long value1, Long value2) {
            addCriterion("ASSIGN_OPERATOR_ID between", value1, value2, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andAssignOperatorIdNotBetween(Long value1, Long value2) {
            addCriterion("ASSIGN_OPERATOR_ID not between", value1, value2, "assignOperatorId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdIsNull() {
            addCriterion("SALES_ORGNIZATION_ID is null");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdIsNotNull() {
            addCriterion("SALES_ORGNIZATION_ID is not null");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdEqualTo(Long value) {
            addCriterion("SALES_ORGNIZATION_ID =", value, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdNotEqualTo(Long value) {
            addCriterion("SALES_ORGNIZATION_ID <>", value, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdGreaterThan(Long value) {
            addCriterion("SALES_ORGNIZATION_ID >", value, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdGreaterThanOrEqualTo(Long value) {
            addCriterion("SALES_ORGNIZATION_ID >=", value, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdLessThan(Long value) {
            addCriterion("SALES_ORGNIZATION_ID <", value, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdLessThanOrEqualTo(Long value) {
            addCriterion("SALES_ORGNIZATION_ID <=", value, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdIn(List<Long> values) {
            addCriterion("SALES_ORGNIZATION_ID in", values, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdNotIn(List<Long> values) {
            addCriterion("SALES_ORGNIZATION_ID not in", values, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdBetween(Long value1, Long value2) {
            addCriterion("SALES_ORGNIZATION_ID between", value1, value2, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andSalesOrgnizationIdNotBetween(Long value1, Long value2) {
            addCriterion("SALES_ORGNIZATION_ID not between", value1, value2, "salesOrgnizationId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdIsNull() {
            addCriterion("OPERATOR_ID is null");
            return (Criteria) this;
        }

        public Criteria andOperatorIdIsNotNull() {
            addCriterion("OPERATOR_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOperatorIdEqualTo(Long value) {
            addCriterion("OPERATOR_ID =", value, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdNotEqualTo(Long value) {
            addCriterion("OPERATOR_ID <>", value, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdGreaterThan(Long value) {
            addCriterion("OPERATOR_ID >", value, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdGreaterThanOrEqualTo(Long value) {
            addCriterion("OPERATOR_ID >=", value, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdLessThan(Long value) {
            addCriterion("OPERATOR_ID <", value, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdLessThanOrEqualTo(Long value) {
            addCriterion("OPERATOR_ID <=", value, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdIn(List<Long> values) {
            addCriterion("OPERATOR_ID in", values, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdNotIn(List<Long> values) {
            addCriterion("OPERATOR_ID not in", values, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdBetween(Long value1, Long value2) {
            addCriterion("OPERATOR_ID between", value1, value2, "operatorId");
            return (Criteria) this;
        }

        public Criteria andOperatorIdNotBetween(Long value1, Long value2) {
            addCriterion("OPERATOR_ID not between", value1, value2, "operatorId");
            return (Criteria) this;
        }

        public Criteria andAssignDateIsNull() {
            addCriterion("ASSIGN_DATE is null");
            return (Criteria) this;
        }

        public Criteria andAssignDateIsNotNull() {
            addCriterion("ASSIGN_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andAssignDateEqualTo(Date value) {
            addCriterion("ASSIGN_DATE =", value, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateNotEqualTo(Date value) {
            addCriterion("ASSIGN_DATE <>", value, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateGreaterThan(Date value) {
            addCriterion("ASSIGN_DATE >", value, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateGreaterThanOrEqualTo(Date value) {
            addCriterion("ASSIGN_DATE >=", value, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateLessThan(Date value) {
            addCriterion("ASSIGN_DATE <", value, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateLessThanOrEqualTo(Date value) {
            addCriterion("ASSIGN_DATE <=", value, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateIn(List<Date> values) {
            addCriterion("ASSIGN_DATE in", values, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateNotIn(List<Date> values) {
            addCriterion("ASSIGN_DATE not in", values, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateBetween(Date value1, Date value2) {
            addCriterion("ASSIGN_DATE between", value1, value2, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignDateNotBetween(Date value1, Date value2) {
            addCriterion("ASSIGN_DATE not between", value1, value2, "assignDate");
            return (Criteria) this;
        }

        public Criteria andAssignStateIsNull() {
            addCriterion("ASSIGN_STATE is null");
            return (Criteria) this;
        }

        public Criteria andAssignStateIsNotNull() {
            addCriterion("ASSIGN_STATE is not null");
            return (Criteria) this;
        }

        public Criteria andAssignStateEqualTo(String value) {
            addCriterion("ASSIGN_STATE =", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateNotEqualTo(String value) {
            addCriterion("ASSIGN_STATE <>", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateGreaterThan(String value) {
            addCriterion("ASSIGN_STATE >", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateGreaterThanOrEqualTo(String value) {
            addCriterion("ASSIGN_STATE >=", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateLessThan(String value) {
            addCriterion("ASSIGN_STATE <", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateLessThanOrEqualTo(String value) {
            addCriterion("ASSIGN_STATE <=", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateLike(String value) {
            addCriterion("ASSIGN_STATE like", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateNotLike(String value) {
            addCriterion("ASSIGN_STATE not like", value, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateIn(List<String> values) {
            addCriterion("ASSIGN_STATE in", values, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateNotIn(List<String> values) {
            addCriterion("ASSIGN_STATE not in", values, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateBetween(String value1, String value2) {
            addCriterion("ASSIGN_STATE between", value1, value2, "assignState");
            return (Criteria) this;
        }

        public Criteria andAssignStateNotBetween(String value1, String value2) {
            addCriterion("ASSIGN_STATE not between", value1, value2, "assignState");
            return (Criteria) this;
        }

        public Criteria andOrgIdIsNull() {
            addCriterion("ORG_ID is null");
            return (Criteria) this;
        }

        public Criteria andOrgIdIsNotNull() {
            addCriterion("ORG_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOrgIdEqualTo(Long value) {
            addCriterion("ORG_ID =", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdNotEqualTo(Long value) {
            addCriterion("ORG_ID <>", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdGreaterThan(Long value) {
            addCriterion("ORG_ID >", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdGreaterThanOrEqualTo(Long value) {
            addCriterion("ORG_ID >=", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdLessThan(Long value) {
            addCriterion("ORG_ID <", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdLessThanOrEqualTo(Long value) {
            addCriterion("ORG_ID <=", value, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdIn(List<Long> values) {
            addCriterion("ORG_ID in", values, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdNotIn(List<Long> values) {
            addCriterion("ORG_ID not in", values, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdBetween(Long value1, Long value2) {
            addCriterion("ORG_ID between", value1, value2, "orgId");
            return (Criteria) this;
        }

        public Criteria andOrgIdNotBetween(Long value1, Long value2) {
            addCriterion("ORG_ID not between", value1, value2, "orgId");
            return (Criteria) this;
        }

        public Criteria andOpIdIsNull() {
            addCriterion("OP_ID is null");
            return (Criteria) this;
        }

        public Criteria andOpIdIsNotNull() {
            addCriterion("OP_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOpIdEqualTo(Long value) {
            addCriterion("OP_ID =", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdNotEqualTo(Long value) {
            addCriterion("OP_ID <>", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdGreaterThan(Long value) {
            addCriterion("OP_ID >", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdGreaterThanOrEqualTo(Long value) {
            addCriterion("OP_ID >=", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdLessThan(Long value) {
            addCriterion("OP_ID <", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdLessThanOrEqualTo(Long value) {
            addCriterion("OP_ID <=", value, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdIn(List<Long> values) {
            addCriterion("OP_ID in", values, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdNotIn(List<Long> values) {
            addCriterion("OP_ID not in", values, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdBetween(Long value1, Long value2) {
            addCriterion("OP_ID between", value1, value2, "opId");
            return (Criteria) this;
        }

        public Criteria andOpIdNotBetween(Long value1, Long value2) {
            addCriterion("OP_ID not between", value1, value2, "opId");
            return (Criteria) this;
        }

        public Criteria andDoneDateIsNull() {
            addCriterion("DONE_DATE is null");
            return (Criteria) this;
        }

        public Criteria andDoneDateIsNotNull() {
            addCriterion("DONE_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andDoneDateEqualTo(Date value) {
            addCriterion("DONE_DATE =", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateNotEqualTo(Date value) {
            addCriterion("DONE_DATE <>", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateGreaterThan(Date value) {
            addCriterion("DONE_DATE >", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateGreaterThanOrEqualTo(Date value) {
            addCriterion("DONE_DATE >=", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateLessThan(Date value) {
            addCriterion("DONE_DATE <", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateLessThanOrEqualTo(Date value) {
            addCriterion("DONE_DATE <=", value, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateIn(List<Date> values) {
            addCriterion("DONE_DATE in", values, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateNotIn(List<Date> values) {
            addCriterion("DONE_DATE not in", values, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateBetween(Date value1, Date value2) {
            addCriterion("DONE_DATE between", value1, value2, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneDateNotBetween(Date value1, Date value2) {
            addCriterion("DONE_DATE not between", value1, value2, "doneDate");
            return (Criteria) this;
        }

        public Criteria andDoneCodeIsNull() {
            addCriterion("DONE_CODE is null");
            return (Criteria) this;
        }

        public Criteria andDoneCodeIsNotNull() {
            addCriterion("DONE_CODE is not null");
            return (Criteria) this;
        }

        public Criteria andDoneCodeEqualTo(String value) {
            addCriterion("DONE_CODE =", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeNotEqualTo(String value) {
            addCriterion("DONE_CODE <>", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeGreaterThan(String value) {
            addCriterion("DONE_CODE >", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeGreaterThanOrEqualTo(String value) {
            addCriterion("DONE_CODE >=", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeLessThan(String value) {
            addCriterion("DONE_CODE <", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeLessThanOrEqualTo(String value) {
            addCriterion("DONE_CODE <=", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeLike(String value) {
            addCriterion("DONE_CODE like", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeNotLike(String value) {
            addCriterion("DONE_CODE not like", value, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeIn(List<String> values) {
            addCriterion("DONE_CODE in", values, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeNotIn(List<String> values) {
            addCriterion("DONE_CODE not in", values, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeBetween(String value1, String value2) {
            addCriterion("DONE_CODE between", value1, value2, "doneCode");
            return (Criteria) this;
        }

        public Criteria andDoneCodeNotBetween(String value1, String value2) {
            addCriterion("DONE_CODE not between", value1, value2, "doneCode");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("STATE is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("STATE is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(Long value) {
            addCriterion("STATE =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(Long value) {
            addCriterion("STATE <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(Long value) {
            addCriterion("STATE >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(Long value) {
            addCriterion("STATE >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(Long value) {
            addCriterion("STATE <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(Long value) {
            addCriterion("STATE <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<Long> values) {
            addCriterion("STATE in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<Long> values) {
            addCriterion("STATE not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(Long value1, Long value2) {
            addCriterion("STATE between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(Long value1, Long value2) {
            addCriterion("STATE not between", value1, value2, "state");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated do_not_delete_during_merge Wed May 29 10:28:45 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
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