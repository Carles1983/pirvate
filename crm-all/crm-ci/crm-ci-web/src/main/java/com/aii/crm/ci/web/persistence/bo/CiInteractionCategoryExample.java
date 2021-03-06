package com.aii.crm.ci.web.persistence.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CiInteractionCategoryExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public CiInteractionCategoryExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
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
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
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

        public Criteria andInteractionCategoryIdIsNull() {
            addCriterion("INTERACTION_CATEGORY_ID is null");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdIsNotNull() {
            addCriterion("INTERACTION_CATEGORY_ID is not null");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdEqualTo(Long value) {
            addCriterion("INTERACTION_CATEGORY_ID =", value, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdNotEqualTo(Long value) {
            addCriterion("INTERACTION_CATEGORY_ID <>", value, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdGreaterThan(Long value) {
            addCriterion("INTERACTION_CATEGORY_ID >", value, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdGreaterThanOrEqualTo(Long value) {
            addCriterion("INTERACTION_CATEGORY_ID >=", value, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdLessThan(Long value) {
            addCriterion("INTERACTION_CATEGORY_ID <", value, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdLessThanOrEqualTo(Long value) {
            addCriterion("INTERACTION_CATEGORY_ID <=", value, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdIn(List<Long> values) {
            addCriterion("INTERACTION_CATEGORY_ID in", values, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdNotIn(List<Long> values) {
            addCriterion("INTERACTION_CATEGORY_ID not in", values, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdBetween(Long value1, Long value2) {
            addCriterion("INTERACTION_CATEGORY_ID between", value1, value2, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryIdNotBetween(Long value1, Long value2) {
            addCriterion("INTERACTION_CATEGORY_ID not between", value1, value2, "interactionCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdIsNull() {
            addCriterion("PARENT_CATEGORY_ID is null");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdIsNotNull() {
            addCriterion("PARENT_CATEGORY_ID is not null");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdEqualTo(Long value) {
            addCriterion("PARENT_CATEGORY_ID =", value, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdNotEqualTo(Long value) {
            addCriterion("PARENT_CATEGORY_ID <>", value, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdGreaterThan(Long value) {
            addCriterion("PARENT_CATEGORY_ID >", value, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdGreaterThanOrEqualTo(Long value) {
            addCriterion("PARENT_CATEGORY_ID >=", value, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdLessThan(Long value) {
            addCriterion("PARENT_CATEGORY_ID <", value, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdLessThanOrEqualTo(Long value) {
            addCriterion("PARENT_CATEGORY_ID <=", value, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdIn(List<Long> values) {
            addCriterion("PARENT_CATEGORY_ID in", values, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdNotIn(List<Long> values) {
            addCriterion("PARENT_CATEGORY_ID not in", values, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdBetween(Long value1, Long value2) {
            addCriterion("PARENT_CATEGORY_ID between", value1, value2, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andParentCategoryIdNotBetween(Long value1, Long value2) {
            addCriterion("PARENT_CATEGORY_ID not between", value1, value2, "parentCategoryId");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameIsNull() {
            addCriterion("INTERACTION_CATEGORY_NAME is null");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameIsNotNull() {
            addCriterion("INTERACTION_CATEGORY_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME =", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameNotEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME <>", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameGreaterThan(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME >", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameGreaterThanOrEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME >=", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameLessThan(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME <", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameLessThanOrEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME <=", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameLike(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME like", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameNotLike(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME not like", value, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameIn(List<String> values) {
            addCriterion("INTERACTION_CATEGORY_NAME in", values, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameNotIn(List<String> values) {
            addCriterion("INTERACTION_CATEGORY_NAME not in", values, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameBetween(String value1, String value2) {
            addCriterion("INTERACTION_CATEGORY_NAME between", value1, value2, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameNotBetween(String value1, String value2) {
            addCriterion("INTERACTION_CATEGORY_NAME not between", value1, value2, "interactionCategoryName");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nIsNull() {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N is null");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nIsNotNull() {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N is not null");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N =", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nNotEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N <>", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nGreaterThan(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N >", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nGreaterThanOrEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N >=", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nLessThan(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N <", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nLessThanOrEqualTo(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N <=", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nLike(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N like", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nNotLike(String value) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N not like", value, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nIn(List<String> values) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N in", values, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nNotIn(List<String> values) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N not in", values, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nBetween(String value1, String value2) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N between", value1, value2, "interactionCategoryNameI18n");
            return (Criteria) this;
        }

        public Criteria andInteractionCategoryNameI18nNotBetween(String value1, String value2) {
            addCriterion("INTERACTION_CATEGORY_NAME_I18N not between", value1, value2, "interactionCategoryNameI18n");
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

        public Criteria andRemakrIsNull() {
            addCriterion("REMAKR is null");
            return (Criteria) this;
        }

        public Criteria andRemakrIsNotNull() {
            addCriterion("REMAKR is not null");
            return (Criteria) this;
        }

        public Criteria andRemakrEqualTo(String value) {
            addCriterion("REMAKR =", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrNotEqualTo(String value) {
            addCriterion("REMAKR <>", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrGreaterThan(String value) {
            addCriterion("REMAKR >", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrGreaterThanOrEqualTo(String value) {
            addCriterion("REMAKR >=", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrLessThan(String value) {
            addCriterion("REMAKR <", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrLessThanOrEqualTo(String value) {
            addCriterion("REMAKR <=", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrLike(String value) {
            addCriterion("REMAKR like", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrNotLike(String value) {
            addCriterion("REMAKR not like", value, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrIn(List<String> values) {
            addCriterion("REMAKR in", values, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrNotIn(List<String> values) {
            addCriterion("REMAKR not in", values, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrBetween(String value1, String value2) {
            addCriterion("REMAKR between", value1, value2, "remakr");
            return (Criteria) this;
        }

        public Criteria andRemakrNotBetween(String value1, String value2) {
            addCriterion("REMAKR not between", value1, value2, "remakr");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ci_interaction_category
     *
     * @mbg.generated do_not_delete_during_merge Tue May 21 15:48:36 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
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