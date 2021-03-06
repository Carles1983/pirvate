package com.aii.crm.msm.web.persistence.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OptFunnelLyrOpptyExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public OptFunnelLyrOpptyExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
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
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
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

        public Criteria andFunnelLayerStateIdIsNull() {
            addCriterion("FUNNEL_LAYER_STATE_ID is null");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdIsNotNull() {
            addCriterion("FUNNEL_LAYER_STATE_ID is not null");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_STATE_ID =", value, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdNotEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_STATE_ID <>", value, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdGreaterThan(Long value) {
            addCriterion("FUNNEL_LAYER_STATE_ID >", value, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdGreaterThanOrEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_STATE_ID >=", value, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdLessThan(Long value) {
            addCriterion("FUNNEL_LAYER_STATE_ID <", value, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdLessThanOrEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_STATE_ID <=", value, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdIn(List<Long> values) {
            addCriterion("FUNNEL_LAYER_STATE_ID in", values, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdNotIn(List<Long> values) {
            addCriterion("FUNNEL_LAYER_STATE_ID not in", values, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdBetween(Long value1, Long value2) {
            addCriterion("FUNNEL_LAYER_STATE_ID between", value1, value2, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerStateIdNotBetween(Long value1, Long value2) {
            addCriterion("FUNNEL_LAYER_STATE_ID not between", value1, value2, "funnelLayerStateId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdIsNull() {
            addCriterion("FUNNEL_LAYER_ID is null");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdIsNotNull() {
            addCriterion("FUNNEL_LAYER_ID is not null");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_ID =", value, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdNotEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_ID <>", value, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdGreaterThan(Long value) {
            addCriterion("FUNNEL_LAYER_ID >", value, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdGreaterThanOrEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_ID >=", value, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdLessThan(Long value) {
            addCriterion("FUNNEL_LAYER_ID <", value, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdLessThanOrEqualTo(Long value) {
            addCriterion("FUNNEL_LAYER_ID <=", value, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdIn(List<Long> values) {
            addCriterion("FUNNEL_LAYER_ID in", values, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdNotIn(List<Long> values) {
            addCriterion("FUNNEL_LAYER_ID not in", values, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdBetween(Long value1, Long value2) {
            addCriterion("FUNNEL_LAYER_ID between", value1, value2, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andFunnelLayerIdNotBetween(Long value1, Long value2) {
            addCriterion("FUNNEL_LAYER_ID not between", value1, value2, "funnelLayerId");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateIsNull() {
            addCriterion("OPPORTUNITY_STATE is null");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateIsNotNull() {
            addCriterion("OPPORTUNITY_STATE is not null");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateEqualTo(String value) {
            addCriterion("OPPORTUNITY_STATE =", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateNotEqualTo(String value) {
            addCriterion("OPPORTUNITY_STATE <>", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateGreaterThan(String value) {
            addCriterion("OPPORTUNITY_STATE >", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateGreaterThanOrEqualTo(String value) {
            addCriterion("OPPORTUNITY_STATE >=", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateLessThan(String value) {
            addCriterion("OPPORTUNITY_STATE <", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateLessThanOrEqualTo(String value) {
            addCriterion("OPPORTUNITY_STATE <=", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateLike(String value) {
            addCriterion("OPPORTUNITY_STATE like", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateNotLike(String value) {
            addCriterion("OPPORTUNITY_STATE not like", value, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateIn(List<String> values) {
            addCriterion("OPPORTUNITY_STATE in", values, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateNotIn(List<String> values) {
            addCriterion("OPPORTUNITY_STATE not in", values, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateBetween(String value1, String value2) {
            addCriterion("OPPORTUNITY_STATE between", value1, value2, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andOpportunityStateNotBetween(String value1, String value2) {
            addCriterion("OPPORTUNITY_STATE not between", value1, value2, "opportunityState");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNull() {
            addCriterion("CREATE_DATE is null");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNotNull() {
            addCriterion("CREATE_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andCreateDateEqualTo(Date value) {
            addCriterion("CREATE_DATE =", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotEqualTo(Date value) {
            addCriterion("CREATE_DATE <>", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThan(Date value) {
            addCriterion("CREATE_DATE >", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThanOrEqualTo(Date value) {
            addCriterion("CREATE_DATE >=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThan(Date value) {
            addCriterion("CREATE_DATE <", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThanOrEqualTo(Date value) {
            addCriterion("CREATE_DATE <=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateIn(List<Date> values) {
            addCriterion("CREATE_DATE in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotIn(List<Date> values) {
            addCriterion("CREATE_DATE not in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateBetween(Date value1, Date value2) {
            addCriterion("CREATE_DATE between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotBetween(Date value1, Date value2) {
            addCriterion("CREATE_DATE not between", value1, value2, "createDate");
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
     * This class corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated do_not_delete_during_merge Wed May 29 10:26:50 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_funnel_lyr_oppty
     *
     * @mbg.generated Wed May 29 10:26:50 CST 2019
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