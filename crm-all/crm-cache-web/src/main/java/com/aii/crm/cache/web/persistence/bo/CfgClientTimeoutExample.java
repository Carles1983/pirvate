package com.aii.crm.cache.web.persistence.bo;

import java.util.ArrayList;
import java.util.List;

public class CfgClientTimeoutExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public CfgClientTimeoutExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
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
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
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

        public Criteria andInterfaceClassnameIsNull() {
            addCriterion("INTERFACE_CLASSNAME is null");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameIsNotNull() {
            addCriterion("INTERFACE_CLASSNAME is not null");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameEqualTo(String value) {
            addCriterion("INTERFACE_CLASSNAME =", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameNotEqualTo(String value) {
            addCriterion("INTERFACE_CLASSNAME <>", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameGreaterThan(String value) {
            addCriterion("INTERFACE_CLASSNAME >", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameGreaterThanOrEqualTo(String value) {
            addCriterion("INTERFACE_CLASSNAME >=", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameLessThan(String value) {
            addCriterion("INTERFACE_CLASSNAME <", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameLessThanOrEqualTo(String value) {
            addCriterion("INTERFACE_CLASSNAME <=", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameLike(String value) {
            addCriterion("INTERFACE_CLASSNAME like", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameNotLike(String value) {
            addCriterion("INTERFACE_CLASSNAME not like", value, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameIn(List<String> values) {
            addCriterion("INTERFACE_CLASSNAME in", values, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameNotIn(List<String> values) {
            addCriterion("INTERFACE_CLASSNAME not in", values, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameBetween(String value1, String value2) {
            addCriterion("INTERFACE_CLASSNAME between", value1, value2, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andInterfaceClassnameNotBetween(String value1, String value2) {
            addCriterion("INTERFACE_CLASSNAME not between", value1, value2, "interfaceClassname");
            return (Criteria) this;
        }

        public Criteria andMethodNameIsNull() {
            addCriterion("METHOD_NAME is null");
            return (Criteria) this;
        }

        public Criteria andMethodNameIsNotNull() {
            addCriterion("METHOD_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andMethodNameEqualTo(String value) {
            addCriterion("METHOD_NAME =", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameNotEqualTo(String value) {
            addCriterion("METHOD_NAME <>", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameGreaterThan(String value) {
            addCriterion("METHOD_NAME >", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameGreaterThanOrEqualTo(String value) {
            addCriterion("METHOD_NAME >=", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameLessThan(String value) {
            addCriterion("METHOD_NAME <", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameLessThanOrEqualTo(String value) {
            addCriterion("METHOD_NAME <=", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameLike(String value) {
            addCriterion("METHOD_NAME like", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameNotLike(String value) {
            addCriterion("METHOD_NAME not like", value, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameIn(List<String> values) {
            addCriterion("METHOD_NAME in", values, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameNotIn(List<String> values) {
            addCriterion("METHOD_NAME not in", values, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameBetween(String value1, String value2) {
            addCriterion("METHOD_NAME between", value1, value2, "methodName");
            return (Criteria) this;
        }

        public Criteria andMethodNameNotBetween(String value1, String value2) {
            addCriterion("METHOD_NAME not between", value1, value2, "methodName");
            return (Criteria) this;
        }

        public Criteria andParameterCountIsNull() {
            addCriterion("PARAMETER_COUNT is null");
            return (Criteria) this;
        }

        public Criteria andParameterCountIsNotNull() {
            addCriterion("PARAMETER_COUNT is not null");
            return (Criteria) this;
        }

        public Criteria andParameterCountEqualTo(Integer value) {
            addCriterion("PARAMETER_COUNT =", value, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountNotEqualTo(Integer value) {
            addCriterion("PARAMETER_COUNT <>", value, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountGreaterThan(Integer value) {
            addCriterion("PARAMETER_COUNT >", value, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("PARAMETER_COUNT >=", value, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountLessThan(Integer value) {
            addCriterion("PARAMETER_COUNT <", value, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountLessThanOrEqualTo(Integer value) {
            addCriterion("PARAMETER_COUNT <=", value, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountIn(List<Integer> values) {
            addCriterion("PARAMETER_COUNT in", values, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountNotIn(List<Integer> values) {
            addCriterion("PARAMETER_COUNT not in", values, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountBetween(Integer value1, Integer value2) {
            addCriterion("PARAMETER_COUNT between", value1, value2, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andParameterCountNotBetween(Integer value1, Integer value2) {
            addCriterion("PARAMETER_COUNT not between", value1, value2, "parameterCount");
            return (Criteria) this;
        }

        public Criteria andServerNameIsNull() {
            addCriterion("SERVER_NAME is null");
            return (Criteria) this;
        }

        public Criteria andServerNameIsNotNull() {
            addCriterion("SERVER_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andServerNameEqualTo(String value) {
            addCriterion("SERVER_NAME =", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotEqualTo(String value) {
            addCriterion("SERVER_NAME <>", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameGreaterThan(String value) {
            addCriterion("SERVER_NAME >", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameGreaterThanOrEqualTo(String value) {
            addCriterion("SERVER_NAME >=", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameLessThan(String value) {
            addCriterion("SERVER_NAME <", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameLessThanOrEqualTo(String value) {
            addCriterion("SERVER_NAME <=", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameLike(String value) {
            addCriterion("SERVER_NAME like", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotLike(String value) {
            addCriterion("SERVER_NAME not like", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameIn(List<String> values) {
            addCriterion("SERVER_NAME in", values, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotIn(List<String> values) {
            addCriterion("SERVER_NAME not in", values, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameBetween(String value1, String value2) {
            addCriterion("SERVER_NAME between", value1, value2, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotBetween(String value1, String value2) {
            addCriterion("SERVER_NAME not between", value1, value2, "serverName");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondIsNull() {
            addCriterion("TIMEOUT_SECOND is null");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondIsNotNull() {
            addCriterion("TIMEOUT_SECOND is not null");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondEqualTo(Integer value) {
            addCriterion("TIMEOUT_SECOND =", value, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondNotEqualTo(Integer value) {
            addCriterion("TIMEOUT_SECOND <>", value, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondGreaterThan(Integer value) {
            addCriterion("TIMEOUT_SECOND >", value, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondGreaterThanOrEqualTo(Integer value) {
            addCriterion("TIMEOUT_SECOND >=", value, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondLessThan(Integer value) {
            addCriterion("TIMEOUT_SECOND <", value, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondLessThanOrEqualTo(Integer value) {
            addCriterion("TIMEOUT_SECOND <=", value, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondIn(List<Integer> values) {
            addCriterion("TIMEOUT_SECOND in", values, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondNotIn(List<Integer> values) {
            addCriterion("TIMEOUT_SECOND not in", values, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondBetween(Integer value1, Integer value2) {
            addCriterion("TIMEOUT_SECOND between", value1, value2, "timeoutSecond");
            return (Criteria) this;
        }

        public Criteria andTimeoutSecondNotBetween(Integer value1, Integer value2) {
            addCriterion("TIMEOUT_SECOND not between", value1, value2, "timeoutSecond");
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
     * This class corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated do_not_delete_during_merge Tue May 21 09:03:47 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table cfg_client_timeout
     *
     * @mbg.generated Tue May 21 09:03:47 CST 2019
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