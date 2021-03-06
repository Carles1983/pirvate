package com.aii.crm.msm.web.persistence.bo;

import java.util.ArrayList;
import java.util.List;

public class OptStaticCodeEnumExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public OptStaticCodeEnumExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
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
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
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

        public Criteria andCodeEnumIdIsNull() {
            addCriterion("CODE_ENUM_ID is null");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdIsNotNull() {
            addCriterion("CODE_ENUM_ID is not null");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdEqualTo(Long value) {
            addCriterion("CODE_ENUM_ID =", value, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdNotEqualTo(Long value) {
            addCriterion("CODE_ENUM_ID <>", value, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdGreaterThan(Long value) {
            addCriterion("CODE_ENUM_ID >", value, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdGreaterThanOrEqualTo(Long value) {
            addCriterion("CODE_ENUM_ID >=", value, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdLessThan(Long value) {
            addCriterion("CODE_ENUM_ID <", value, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdLessThanOrEqualTo(Long value) {
            addCriterion("CODE_ENUM_ID <=", value, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdIn(List<Long> values) {
            addCriterion("CODE_ENUM_ID in", values, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdNotIn(List<Long> values) {
            addCriterion("CODE_ENUM_ID not in", values, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdBetween(Long value1, Long value2) {
            addCriterion("CODE_ENUM_ID between", value1, value2, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeEnumIdNotBetween(Long value1, Long value2) {
            addCriterion("CODE_ENUM_ID not between", value1, value2, "codeEnumId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdIsNull() {
            addCriterion("CODE_TYPE_ID is null");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdIsNotNull() {
            addCriterion("CODE_TYPE_ID is not null");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdEqualTo(Long value) {
            addCriterion("CODE_TYPE_ID =", value, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdNotEqualTo(Long value) {
            addCriterion("CODE_TYPE_ID <>", value, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdGreaterThan(Long value) {
            addCriterion("CODE_TYPE_ID >", value, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdGreaterThanOrEqualTo(Long value) {
            addCriterion("CODE_TYPE_ID >=", value, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdLessThan(Long value) {
            addCriterion("CODE_TYPE_ID <", value, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdLessThanOrEqualTo(Long value) {
            addCriterion("CODE_TYPE_ID <=", value, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdIn(List<Long> values) {
            addCriterion("CODE_TYPE_ID in", values, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdNotIn(List<Long> values) {
            addCriterion("CODE_TYPE_ID not in", values, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdBetween(Long value1, Long value2) {
            addCriterion("CODE_TYPE_ID between", value1, value2, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andCodeTypeIdNotBetween(Long value1, Long value2) {
            addCriterion("CODE_TYPE_ID not between", value1, value2, "codeTypeId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdIsNull() {
            addCriterion("PARENT_CODE_ENUM_ID is null");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdIsNotNull() {
            addCriterion("PARENT_CODE_ENUM_ID is not null");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdEqualTo(Long value) {
            addCriterion("PARENT_CODE_ENUM_ID =", value, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdNotEqualTo(Long value) {
            addCriterion("PARENT_CODE_ENUM_ID <>", value, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdGreaterThan(Long value) {
            addCriterion("PARENT_CODE_ENUM_ID >", value, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdGreaterThanOrEqualTo(Long value) {
            addCriterion("PARENT_CODE_ENUM_ID >=", value, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdLessThan(Long value) {
            addCriterion("PARENT_CODE_ENUM_ID <", value, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdLessThanOrEqualTo(Long value) {
            addCriterion("PARENT_CODE_ENUM_ID <=", value, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdIn(List<Long> values) {
            addCriterion("PARENT_CODE_ENUM_ID in", values, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdNotIn(List<Long> values) {
            addCriterion("PARENT_CODE_ENUM_ID not in", values, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdBetween(Long value1, Long value2) {
            addCriterion("PARENT_CODE_ENUM_ID between", value1, value2, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andParentCodeEnumIdNotBetween(Long value1, Long value2) {
            addCriterion("PARENT_CODE_ENUM_ID not between", value1, value2, "parentCodeEnumId");
            return (Criteria) this;
        }

        public Criteria andEnumValueIsNull() {
            addCriterion("ENUM_VALUE is null");
            return (Criteria) this;
        }

        public Criteria andEnumValueIsNotNull() {
            addCriterion("ENUM_VALUE is not null");
            return (Criteria) this;
        }

        public Criteria andEnumValueEqualTo(String value) {
            addCriterion("ENUM_VALUE =", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueNotEqualTo(String value) {
            addCriterion("ENUM_VALUE <>", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueGreaterThan(String value) {
            addCriterion("ENUM_VALUE >", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueGreaterThanOrEqualTo(String value) {
            addCriterion("ENUM_VALUE >=", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueLessThan(String value) {
            addCriterion("ENUM_VALUE <", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueLessThanOrEqualTo(String value) {
            addCriterion("ENUM_VALUE <=", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueLike(String value) {
            addCriterion("ENUM_VALUE like", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueNotLike(String value) {
            addCriterion("ENUM_VALUE not like", value, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueIn(List<String> values) {
            addCriterion("ENUM_VALUE in", values, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueNotIn(List<String> values) {
            addCriterion("ENUM_VALUE not in", values, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueBetween(String value1, String value2) {
            addCriterion("ENUM_VALUE between", value1, value2, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumValueNotBetween(String value1, String value2) {
            addCriterion("ENUM_VALUE not between", value1, value2, "enumValue");
            return (Criteria) this;
        }

        public Criteria andEnumNameIsNull() {
            addCriterion("ENUM_NAME is null");
            return (Criteria) this;
        }

        public Criteria andEnumNameIsNotNull() {
            addCriterion("ENUM_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andEnumNameEqualTo(String value) {
            addCriterion("ENUM_NAME =", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameNotEqualTo(String value) {
            addCriterion("ENUM_NAME <>", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameGreaterThan(String value) {
            addCriterion("ENUM_NAME >", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameGreaterThanOrEqualTo(String value) {
            addCriterion("ENUM_NAME >=", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameLessThan(String value) {
            addCriterion("ENUM_NAME <", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameLessThanOrEqualTo(String value) {
            addCriterion("ENUM_NAME <=", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameLike(String value) {
            addCriterion("ENUM_NAME like", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameNotLike(String value) {
            addCriterion("ENUM_NAME not like", value, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameIn(List<String> values) {
            addCriterion("ENUM_NAME in", values, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameNotIn(List<String> values) {
            addCriterion("ENUM_NAME not in", values, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameBetween(String value1, String value2) {
            addCriterion("ENUM_NAME between", value1, value2, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumNameNotBetween(String value1, String value2) {
            addCriterion("ENUM_NAME not between", value1, value2, "enumName");
            return (Criteria) this;
        }

        public Criteria andEnumDescIsNull() {
            addCriterion("ENUM_DESC is null");
            return (Criteria) this;
        }

        public Criteria andEnumDescIsNotNull() {
            addCriterion("ENUM_DESC is not null");
            return (Criteria) this;
        }

        public Criteria andEnumDescEqualTo(String value) {
            addCriterion("ENUM_DESC =", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescNotEqualTo(String value) {
            addCriterion("ENUM_DESC <>", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescGreaterThan(String value) {
            addCriterion("ENUM_DESC >", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescGreaterThanOrEqualTo(String value) {
            addCriterion("ENUM_DESC >=", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescLessThan(String value) {
            addCriterion("ENUM_DESC <", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescLessThanOrEqualTo(String value) {
            addCriterion("ENUM_DESC <=", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescLike(String value) {
            addCriterion("ENUM_DESC like", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescNotLike(String value) {
            addCriterion("ENUM_DESC not like", value, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescIn(List<String> values) {
            addCriterion("ENUM_DESC in", values, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescNotIn(List<String> values) {
            addCriterion("ENUM_DESC not in", values, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescBetween(String value1, String value2) {
            addCriterion("ENUM_DESC between", value1, value2, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andEnumDescNotBetween(String value1, String value2) {
            addCriterion("ENUM_DESC not between", value1, value2, "enumDesc");
            return (Criteria) this;
        }

        public Criteria andSortIdIsNull() {
            addCriterion("SORT_ID is null");
            return (Criteria) this;
        }

        public Criteria andSortIdIsNotNull() {
            addCriterion("SORT_ID is not null");
            return (Criteria) this;
        }

        public Criteria andSortIdEqualTo(Long value) {
            addCriterion("SORT_ID =", value, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdNotEqualTo(Long value) {
            addCriterion("SORT_ID <>", value, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdGreaterThan(Long value) {
            addCriterion("SORT_ID >", value, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdGreaterThanOrEqualTo(Long value) {
            addCriterion("SORT_ID >=", value, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdLessThan(Long value) {
            addCriterion("SORT_ID <", value, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdLessThanOrEqualTo(Long value) {
            addCriterion("SORT_ID <=", value, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdIn(List<Long> values) {
            addCriterion("SORT_ID in", values, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdNotIn(List<Long> values) {
            addCriterion("SORT_ID not in", values, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdBetween(Long value1, Long value2) {
            addCriterion("SORT_ID between", value1, value2, "sortId");
            return (Criteria) this;
        }

        public Criteria andSortIdNotBetween(Long value1, Long value2) {
            addCriterion("SORT_ID not between", value1, value2, "sortId");
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

        public Criteria andExternEnumCodeIsNull() {
            addCriterion("EXTERN_ENUM_CODE is null");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeIsNotNull() {
            addCriterion("EXTERN_ENUM_CODE is not null");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeEqualTo(String value) {
            addCriterion("EXTERN_ENUM_CODE =", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeNotEqualTo(String value) {
            addCriterion("EXTERN_ENUM_CODE <>", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeGreaterThan(String value) {
            addCriterion("EXTERN_ENUM_CODE >", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeGreaterThanOrEqualTo(String value) {
            addCriterion("EXTERN_ENUM_CODE >=", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeLessThan(String value) {
            addCriterion("EXTERN_ENUM_CODE <", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeLessThanOrEqualTo(String value) {
            addCriterion("EXTERN_ENUM_CODE <=", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeLike(String value) {
            addCriterion("EXTERN_ENUM_CODE like", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeNotLike(String value) {
            addCriterion("EXTERN_ENUM_CODE not like", value, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeIn(List<String> values) {
            addCriterion("EXTERN_ENUM_CODE in", values, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeNotIn(List<String> values) {
            addCriterion("EXTERN_ENUM_CODE not in", values, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeBetween(String value1, String value2) {
            addCriterion("EXTERN_ENUM_CODE between", value1, value2, "externEnumCode");
            return (Criteria) this;
        }

        public Criteria andExternEnumCodeNotBetween(String value1, String value2) {
            addCriterion("EXTERN_ENUM_CODE not between", value1, value2, "externEnumCode");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated do_not_delete_during_merge Wed May 29 10:31:59 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table opt_static_code_enum
     *
     * @mbg.generated Wed May 29 10:31:59 CST 2019
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