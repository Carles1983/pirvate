package com.aii.crm.loyalty.web.persistence.mapper;

import com.aii.crm.loyalty.web.persistence.bo.IntegralPlanInstance;
import com.aii.crm.loyalty.web.persistence.bo.IntegralPlanInstanceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralPlanInstanceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    long countByExample(IntegralPlanInstanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int deleteByExample(IntegralPlanInstanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int deleteByPrimaryKey(Long integralPlanInstanceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int insert(IntegralPlanInstance record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int insertSelective(IntegralPlanInstance record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    List<IntegralPlanInstance> selectByExample(IntegralPlanInstanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    IntegralPlanInstance selectByPrimaryKey(Long integralPlanInstanceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int updateByExampleSelective(@Param("record") IntegralPlanInstance record, @Param("example") IntegralPlanInstanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int updateByExample(@Param("record") IntegralPlanInstance record, @Param("example") IntegralPlanInstanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int updateByPrimaryKeySelective(IntegralPlanInstance record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance
     *
     * @mbg.generated Wed May 29 09:47:01 CST 2019
     */
    int updateByPrimaryKey(IntegralPlanInstance record);
}