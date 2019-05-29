package com.aii.crm.loyalty.web.persistence.mapper;

import com.aii.crm.loyalty.web.persistence.bo.IntegralPlan;
import com.aii.crm.loyalty.web.persistence.bo.IntegralPlanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralPlanMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    long countByExample(IntegralPlanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int deleteByExample(IntegralPlanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int deleteByPrimaryKey(Long integralPlanId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int insert(IntegralPlan record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int insertSelective(IntegralPlan record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    List<IntegralPlan> selectByExample(IntegralPlanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    IntegralPlan selectByPrimaryKey(Long integralPlanId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int updateByExampleSelective(@Param("record") IntegralPlan record, @Param("example") IntegralPlanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int updateByExample(@Param("record") IntegralPlan record, @Param("example") IntegralPlanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int updateByPrimaryKeySelective(IntegralPlan record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan
     *
     * @mbg.generated Wed May 29 09:46:44 CST 2019
     */
    int updateByPrimaryKey(IntegralPlan record);
}