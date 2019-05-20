package com.aii.crm.cache.web.persistence.bo;

import java.util.ArrayList;
import java.util.List;

public class CfgHttpMappingExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public CfgHttpMappingExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
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
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
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

        public Criteria andMappingIdIsNull() {
            addCriterion("MAPPING_ID is null");
            return (Criteria) this;
        }

        public Criteria andMappingIdIsNotNull() {
            addCriterion("MAPPING_ID is not null");
            return (Criteria) this;
        }

        public Criteria andMappingIdEqualTo(Long value) {
            addCriterion("MAPPING_ID =", value, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdNotEqualTo(Long value) {
            addCriterion("MAPPING_ID <>", value, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdGreaterThan(Long value) {
            addCriterion("MAPPING_ID >", value, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdGreaterThanOrEqualTo(Long value) {
            addCriterion("MAPPING_ID >=", value, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdLessThan(Long value) {
            addCriterion("MAPPING_ID <", value, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdLessThanOrEqualTo(Long value) {
            addCriterion("MAPPING_ID <=", value, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdIn(List<Long> values) {
            addCriterion("MAPPING_ID in", values, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdNotIn(List<Long> values) {
            addCriterion("MAPPING_ID not in", values, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdBetween(Long value1, Long value2) {
            addCriterion("MAPPING_ID between", value1, value2, "mappingId");
            return (Criteria) this;
        }

        public Criteria andMappingIdNotBetween(Long value1, Long value2) {
            addCriterion("MAPPING_ID not between", value1, value2, "mappingId");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeIsNull() {
            addCriterion("CFG_HTTP_CODE is null");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeIsNotNull() {
            addCriterion("CFG_HTTP_CODE is not null");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeEqualTo(String value) {
            addCriterion("CFG_HTTP_CODE =", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeNotEqualTo(String value) {
            addCriterion("CFG_HTTP_CODE <>", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeGreaterThan(String value) {
            addCriterion("CFG_HTTP_CODE >", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeGreaterThanOrEqualTo(String value) {
            addCriterion("CFG_HTTP_CODE >=", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeLessThan(String value) {
            addCriterion("CFG_HTTP_CODE <", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeLessThanOrEqualTo(String value) {
            addCriterion("CFG_HTTP_CODE <=", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeLike(String value) {
            addCriterion("CFG_HTTP_CODE like", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeNotLike(String value) {
            addCriterion("CFG_HTTP_CODE not like", value, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeIn(List<String> values) {
            addCriterion("CFG_HTTP_CODE in", values, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeNotIn(List<String> values) {
            addCriterion("CFG_HTTP_CODE not in", values, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeBetween(String value1, String value2) {
            addCriterion("CFG_HTTP_CODE between", value1, value2, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andCfgHttpCodeNotBetween(String value1, String value2) {
            addCriterion("CFG_HTTP_CODE not between", value1, value2, "cfgHttpCode");
            return (Criteria) this;
        }

        public Criteria andMappingNameIsNull() {
            addCriterion("MAPPING_NAME is null");
            return (Criteria) this;
        }

        public Criteria andMappingNameIsNotNull() {
            addCriterion("MAPPING_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andMappingNameEqualTo(String value) {
            addCriterion("MAPPING_NAME =", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameNotEqualTo(String value) {
            addCriterion("MAPPING_NAME <>", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameGreaterThan(String value) {
            addCriterion("MAPPING_NAME >", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameGreaterThanOrEqualTo(String value) {
            addCriterion("MAPPING_NAME >=", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameLessThan(String value) {
            addCriterion("MAPPING_NAME <", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameLessThanOrEqualTo(String value) {
            addCriterion("MAPPING_NAME <=", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameLike(String value) {
            addCriterion("MAPPING_NAME like", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameNotLike(String value) {
            addCriterion("MAPPING_NAME not like", value, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameIn(List<String> values) {
            addCriterion("MAPPING_NAME in", values, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameNotIn(List<String> values) {
            addCriterion("MAPPING_NAME not in", values, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameBetween(String value1, String value2) {
            addCriterion("MAPPING_NAME between", value1, value2, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingNameNotBetween(String value1, String value2) {
            addCriterion("MAPPING_NAME not between", value1, value2, "mappingName");
            return (Criteria) this;
        }

        public Criteria andMappingValueIsNull() {
            addCriterion("MAPPING_VALUE is null");
            return (Criteria) this;
        }

        public Criteria andMappingValueIsNotNull() {
            addCriterion("MAPPING_VALUE is not null");
            return (Criteria) this;
        }

        public Criteria andMappingValueEqualTo(String value) {
            addCriterion("MAPPING_VALUE =", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueNotEqualTo(String value) {
            addCriterion("MAPPING_VALUE <>", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueGreaterThan(String value) {
            addCriterion("MAPPING_VALUE >", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueGreaterThanOrEqualTo(String value) {
            addCriterion("MAPPING_VALUE >=", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueLessThan(String value) {
            addCriterion("MAPPING_VALUE <", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueLessThanOrEqualTo(String value) {
            addCriterion("MAPPING_VALUE <=", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueLike(String value) {
            addCriterion("MAPPING_VALUE like", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueNotLike(String value) {
            addCriterion("MAPPING_VALUE not like", value, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueIn(List<String> values) {
            addCriterion("MAPPING_VALUE in", values, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueNotIn(List<String> values) {
            addCriterion("MAPPING_VALUE not in", values, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueBetween(String value1, String value2) {
            addCriterion("MAPPING_VALUE between", value1, value2, "mappingValue");
            return (Criteria) this;
        }

        public Criteria andMappingValueNotBetween(String value1, String value2) {
            addCriterion("MAPPING_VALUE not between", value1, value2, "mappingValue");
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

        public Criteria andStateEqualTo(String value) {
            addCriterion("STATE =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(String value) {
            addCriterion("STATE <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(String value) {
            addCriterion("STATE >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(String value) {
            addCriterion("STATE >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(String value) {
            addCriterion("STATE <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(String value) {
            addCriterion("STATE <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLike(String value) {
            addCriterion("STATE like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotLike(String value) {
            addCriterion("STATE not like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<String> values) {
            addCriterion("STATE in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<String> values) {
            addCriterion("STATE not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(String value1, String value2) {
            addCriterion("STATE between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(String value1, String value2) {
            addCriterion("STATE not between", value1, value2, "state");
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
     * This class corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated do_not_delete_during_merge Mon May 20 09:49:50 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
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