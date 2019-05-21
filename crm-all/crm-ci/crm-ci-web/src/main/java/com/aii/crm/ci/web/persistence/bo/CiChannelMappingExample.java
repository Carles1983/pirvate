package com.aii.crm.ci.web.persistence.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CiChannelMappingExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public CiChannelMappingExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
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
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
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

        public Criteria andChnlMappingIdIsNull() {
            addCriterion("CHNL_MAPPING_ID is null");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdIsNotNull() {
            addCriterion("CHNL_MAPPING_ID is not null");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdEqualTo(Long value) {
            addCriterion("CHNL_MAPPING_ID =", value, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdNotEqualTo(Long value) {
            addCriterion("CHNL_MAPPING_ID <>", value, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdGreaterThan(Long value) {
            addCriterion("CHNL_MAPPING_ID >", value, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdGreaterThanOrEqualTo(Long value) {
            addCriterion("CHNL_MAPPING_ID >=", value, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdLessThan(Long value) {
            addCriterion("CHNL_MAPPING_ID <", value, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdLessThanOrEqualTo(Long value) {
            addCriterion("CHNL_MAPPING_ID <=", value, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdIn(List<Long> values) {
            addCriterion("CHNL_MAPPING_ID in", values, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdNotIn(List<Long> values) {
            addCriterion("CHNL_MAPPING_ID not in", values, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdBetween(Long value1, Long value2) {
            addCriterion("CHNL_MAPPING_ID between", value1, value2, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChnlMappingIdNotBetween(Long value1, Long value2) {
            addCriterion("CHNL_MAPPING_ID not between", value1, value2, "chnlMappingId");
            return (Criteria) this;
        }

        public Criteria andChannelIdIsNull() {
            addCriterion("CHANNEL_ID is null");
            return (Criteria) this;
        }

        public Criteria andChannelIdIsNotNull() {
            addCriterion("CHANNEL_ID is not null");
            return (Criteria) this;
        }

        public Criteria andChannelIdEqualTo(Long value) {
            addCriterion("CHANNEL_ID =", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotEqualTo(Long value) {
            addCriterion("CHANNEL_ID <>", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdGreaterThan(Long value) {
            addCriterion("CHANNEL_ID >", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdGreaterThanOrEqualTo(Long value) {
            addCriterion("CHANNEL_ID >=", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdLessThan(Long value) {
            addCriterion("CHANNEL_ID <", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdLessThanOrEqualTo(Long value) {
            addCriterion("CHANNEL_ID <=", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdIn(List<Long> values) {
            addCriterion("CHANNEL_ID in", values, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotIn(List<Long> values) {
            addCriterion("CHANNEL_ID not in", values, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdBetween(Long value1, Long value2) {
            addCriterion("CHANNEL_ID between", value1, value2, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotBetween(Long value1, Long value2) {
            addCriterion("CHANNEL_ID not between", value1, value2, "channelId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdIsNull() {
            addCriterion("SRC_SYS_ID is null");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdIsNotNull() {
            addCriterion("SRC_SYS_ID is not null");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdEqualTo(String value) {
            addCriterion("SRC_SYS_ID =", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdNotEqualTo(String value) {
            addCriterion("SRC_SYS_ID <>", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdGreaterThan(String value) {
            addCriterion("SRC_SYS_ID >", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdGreaterThanOrEqualTo(String value) {
            addCriterion("SRC_SYS_ID >=", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdLessThan(String value) {
            addCriterion("SRC_SYS_ID <", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdLessThanOrEqualTo(String value) {
            addCriterion("SRC_SYS_ID <=", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdLike(String value) {
            addCriterion("SRC_SYS_ID like", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdNotLike(String value) {
            addCriterion("SRC_SYS_ID not like", value, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdIn(List<String> values) {
            addCriterion("SRC_SYS_ID in", values, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdNotIn(List<String> values) {
            addCriterion("SRC_SYS_ID not in", values, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdBetween(String value1, String value2) {
            addCriterion("SRC_SYS_ID between", value1, value2, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysIdNotBetween(String value1, String value2) {
            addCriterion("SRC_SYS_ID not between", value1, value2, "srcSysId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdIsNull() {
            addCriterion("SRC_SYS_CHNL_ID is null");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdIsNotNull() {
            addCriterion("SRC_SYS_CHNL_ID is not null");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdEqualTo(String value) {
            addCriterion("SRC_SYS_CHNL_ID =", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdNotEqualTo(String value) {
            addCriterion("SRC_SYS_CHNL_ID <>", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdGreaterThan(String value) {
            addCriterion("SRC_SYS_CHNL_ID >", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdGreaterThanOrEqualTo(String value) {
            addCriterion("SRC_SYS_CHNL_ID >=", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdLessThan(String value) {
            addCriterion("SRC_SYS_CHNL_ID <", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdLessThanOrEqualTo(String value) {
            addCriterion("SRC_SYS_CHNL_ID <=", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdLike(String value) {
            addCriterion("SRC_SYS_CHNL_ID like", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdNotLike(String value) {
            addCriterion("SRC_SYS_CHNL_ID not like", value, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdIn(List<String> values) {
            addCriterion("SRC_SYS_CHNL_ID in", values, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdNotIn(List<String> values) {
            addCriterion("SRC_SYS_CHNL_ID not in", values, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdBetween(String value1, String value2) {
            addCriterion("SRC_SYS_CHNL_ID between", value1, value2, "srcSysChnlId");
            return (Criteria) this;
        }

        public Criteria andSrcSysChnlIdNotBetween(String value1, String value2) {
            addCriterion("SRC_SYS_CHNL_ID not between", value1, value2, "srcSysChnlId");
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

        public Criteria andRemarkIsNull() {
            addCriterion("REMARK is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("REMARK is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("REMARK =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("REMARK <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("REMARK >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("REMARK >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("REMARK <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("REMARK <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("REMARK like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("REMARK not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("REMARK in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("REMARK not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("REMARK between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("REMARK not between", value1, value2, "remark");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated do_not_delete_during_merge Tue May 21 15:46:30 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ci_channel_mapping
     *
     * @mbg.generated Tue May 21 15:46:30 CST 2019
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