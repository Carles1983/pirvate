package com.aii.crm.msm.web.persistence.bo;

import java.util.ArrayList;
import java.util.List;

public class MsmSalesMatrixExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public MsmSalesMatrixExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
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
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
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

        public Criteria andSalesMatrixIdIsNull() {
            addCriterion("SALES_MATRIX_ID is null");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdIsNotNull() {
            addCriterion("SALES_MATRIX_ID is not null");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdEqualTo(Long value) {
            addCriterion("SALES_MATRIX_ID =", value, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdNotEqualTo(Long value) {
            addCriterion("SALES_MATRIX_ID <>", value, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdGreaterThan(Long value) {
            addCriterion("SALES_MATRIX_ID >", value, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdGreaterThanOrEqualTo(Long value) {
            addCriterion("SALES_MATRIX_ID >=", value, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdLessThan(Long value) {
            addCriterion("SALES_MATRIX_ID <", value, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdLessThanOrEqualTo(Long value) {
            addCriterion("SALES_MATRIX_ID <=", value, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdIn(List<Long> values) {
            addCriterion("SALES_MATRIX_ID in", values, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdNotIn(List<Long> values) {
            addCriterion("SALES_MATRIX_ID not in", values, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdBetween(Long value1, Long value2) {
            addCriterion("SALES_MATRIX_ID between", value1, value2, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixIdNotBetween(Long value1, Long value2) {
            addCriterion("SALES_MATRIX_ID not between", value1, value2, "salesMatrixId");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeIsNull() {
            addCriterion("SALES_MATRIX_TYPE is null");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeIsNotNull() {
            addCriterion("SALES_MATRIX_TYPE is not null");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeEqualTo(String value) {
            addCriterion("SALES_MATRIX_TYPE =", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeNotEqualTo(String value) {
            addCriterion("SALES_MATRIX_TYPE <>", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeGreaterThan(String value) {
            addCriterion("SALES_MATRIX_TYPE >", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeGreaterThanOrEqualTo(String value) {
            addCriterion("SALES_MATRIX_TYPE >=", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeLessThan(String value) {
            addCriterion("SALES_MATRIX_TYPE <", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeLessThanOrEqualTo(String value) {
            addCriterion("SALES_MATRIX_TYPE <=", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeLike(String value) {
            addCriterion("SALES_MATRIX_TYPE like", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeNotLike(String value) {
            addCriterion("SALES_MATRIX_TYPE not like", value, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeIn(List<String> values) {
            addCriterion("SALES_MATRIX_TYPE in", values, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeNotIn(List<String> values) {
            addCriterion("SALES_MATRIX_TYPE not in", values, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeBetween(String value1, String value2) {
            addCriterion("SALES_MATRIX_TYPE between", value1, value2, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andSalesMatrixTypeNotBetween(String value1, String value2) {
            addCriterion("SALES_MATRIX_TYPE not between", value1, value2, "salesMatrixType");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipIsNull() {
            addCriterion("CUSTOMER_RELATIONSHIP is null");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipIsNotNull() {
            addCriterion("CUSTOMER_RELATIONSHIP is not null");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipEqualTo(Long value) {
            addCriterion("CUSTOMER_RELATIONSHIP =", value, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipNotEqualTo(Long value) {
            addCriterion("CUSTOMER_RELATIONSHIP <>", value, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipGreaterThan(Long value) {
            addCriterion("CUSTOMER_RELATIONSHIP >", value, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipGreaterThanOrEqualTo(Long value) {
            addCriterion("CUSTOMER_RELATIONSHIP >=", value, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipLessThan(Long value) {
            addCriterion("CUSTOMER_RELATIONSHIP <", value, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipLessThanOrEqualTo(Long value) {
            addCriterion("CUSTOMER_RELATIONSHIP <=", value, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipIn(List<Long> values) {
            addCriterion("CUSTOMER_RELATIONSHIP in", values, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipNotIn(List<Long> values) {
            addCriterion("CUSTOMER_RELATIONSHIP not in", values, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipBetween(Long value1, Long value2) {
            addCriterion("CUSTOMER_RELATIONSHIP between", value1, value2, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerRelationshipNotBetween(Long value1, Long value2) {
            addCriterion("CUSTOMER_RELATIONSHIP not between", value1, value2, "customerRelationship");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeIsNull() {
            addCriterion("CUSTOMER_TYPE is null");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeIsNotNull() {
            addCriterion("CUSTOMER_TYPE is not null");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeEqualTo(Long value) {
            addCriterion("CUSTOMER_TYPE =", value, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeNotEqualTo(Long value) {
            addCriterion("CUSTOMER_TYPE <>", value, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeGreaterThan(Long value) {
            addCriterion("CUSTOMER_TYPE >", value, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeGreaterThanOrEqualTo(Long value) {
            addCriterion("CUSTOMER_TYPE >=", value, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeLessThan(Long value) {
            addCriterion("CUSTOMER_TYPE <", value, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeLessThanOrEqualTo(Long value) {
            addCriterion("CUSTOMER_TYPE <=", value, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeIn(List<Long> values) {
            addCriterion("CUSTOMER_TYPE in", values, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeNotIn(List<Long> values) {
            addCriterion("CUSTOMER_TYPE not in", values, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeBetween(Long value1, Long value2) {
            addCriterion("CUSTOMER_TYPE between", value1, value2, "customerType");
            return (Criteria) this;
        }

        public Criteria andCustomerTypeNotBetween(Long value1, Long value2) {
            addCriterion("CUSTOMER_TYPE not between", value1, value2, "customerType");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelIsNull() {
            addCriterion("MSISDN_LEVEL is null");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelIsNotNull() {
            addCriterion("MSISDN_LEVEL is not null");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelEqualTo(Long value) {
            addCriterion("MSISDN_LEVEL =", value, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelNotEqualTo(Long value) {
            addCriterion("MSISDN_LEVEL <>", value, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelGreaterThan(Long value) {
            addCriterion("MSISDN_LEVEL >", value, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelGreaterThanOrEqualTo(Long value) {
            addCriterion("MSISDN_LEVEL >=", value, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelLessThan(Long value) {
            addCriterion("MSISDN_LEVEL <", value, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelLessThanOrEqualTo(Long value) {
            addCriterion("MSISDN_LEVEL <=", value, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelIn(List<Long> values) {
            addCriterion("MSISDN_LEVEL in", values, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelNotIn(List<Long> values) {
            addCriterion("MSISDN_LEVEL not in", values, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelBetween(Long value1, Long value2) {
            addCriterion("MSISDN_LEVEL between", value1, value2, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andMsisdnLevelNotBetween(Long value1, Long value2) {
            addCriterion("MSISDN_LEVEL not between", value1, value2, "msisdnLevel");
            return (Criteria) this;
        }

        public Criteria andUpperLimitIsNull() {
            addCriterion("UPPER_LIMIT is null");
            return (Criteria) this;
        }

        public Criteria andUpperLimitIsNotNull() {
            addCriterion("UPPER_LIMIT is not null");
            return (Criteria) this;
        }

        public Criteria andUpperLimitEqualTo(Long value) {
            addCriterion("UPPER_LIMIT =", value, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitNotEqualTo(Long value) {
            addCriterion("UPPER_LIMIT <>", value, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitGreaterThan(Long value) {
            addCriterion("UPPER_LIMIT >", value, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitGreaterThanOrEqualTo(Long value) {
            addCriterion("UPPER_LIMIT >=", value, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitLessThan(Long value) {
            addCriterion("UPPER_LIMIT <", value, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitLessThanOrEqualTo(Long value) {
            addCriterion("UPPER_LIMIT <=", value, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitIn(List<Long> values) {
            addCriterion("UPPER_LIMIT in", values, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitNotIn(List<Long> values) {
            addCriterion("UPPER_LIMIT not in", values, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitBetween(Long value1, Long value2) {
            addCriterion("UPPER_LIMIT between", value1, value2, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andUpperLimitNotBetween(Long value1, Long value2) {
            addCriterion("UPPER_LIMIT not between", value1, value2, "upperLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitIsNull() {
            addCriterion("LOWER_LIMIT is null");
            return (Criteria) this;
        }

        public Criteria andLowerLimitIsNotNull() {
            addCriterion("LOWER_LIMIT is not null");
            return (Criteria) this;
        }

        public Criteria andLowerLimitEqualTo(Long value) {
            addCriterion("LOWER_LIMIT =", value, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitNotEqualTo(Long value) {
            addCriterion("LOWER_LIMIT <>", value, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitGreaterThan(Long value) {
            addCriterion("LOWER_LIMIT >", value, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitGreaterThanOrEqualTo(Long value) {
            addCriterion("LOWER_LIMIT >=", value, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitLessThan(Long value) {
            addCriterion("LOWER_LIMIT <", value, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitLessThanOrEqualTo(Long value) {
            addCriterion("LOWER_LIMIT <=", value, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitIn(List<Long> values) {
            addCriterion("LOWER_LIMIT in", values, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitNotIn(List<Long> values) {
            addCriterion("LOWER_LIMIT not in", values, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitBetween(Long value1, Long value2) {
            addCriterion("LOWER_LIMIT between", value1, value2, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andLowerLimitNotBetween(Long value1, Long value2) {
            addCriterion("LOWER_LIMIT not between", value1, value2, "lowerLimit");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionIsNull() {
            addCriterion("AUTHORIZATE_POSITION is null");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionIsNotNull() {
            addCriterion("AUTHORIZATE_POSITION is not null");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionEqualTo(Long value) {
            addCriterion("AUTHORIZATE_POSITION =", value, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionNotEqualTo(Long value) {
            addCriterion("AUTHORIZATE_POSITION <>", value, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionGreaterThan(Long value) {
            addCriterion("AUTHORIZATE_POSITION >", value, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionGreaterThanOrEqualTo(Long value) {
            addCriterion("AUTHORIZATE_POSITION >=", value, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionLessThan(Long value) {
            addCriterion("AUTHORIZATE_POSITION <", value, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionLessThanOrEqualTo(Long value) {
            addCriterion("AUTHORIZATE_POSITION <=", value, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionIn(List<Long> values) {
            addCriterion("AUTHORIZATE_POSITION in", values, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionNotIn(List<Long> values) {
            addCriterion("AUTHORIZATE_POSITION not in", values, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionBetween(Long value1, Long value2) {
            addCriterion("AUTHORIZATE_POSITION between", value1, value2, "authorizatePosition");
            return (Criteria) this;
        }

        public Criteria andAuthorizatePositionNotBetween(Long value1, Long value2) {
            addCriterion("AUTHORIZATE_POSITION not between", value1, value2, "authorizatePosition");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated do_not_delete_during_merge Wed May 29 10:24:31 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table msm_sales_matrix
     *
     * @mbg.generated Wed May 29 10:24:31 CST 2019
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