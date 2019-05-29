package com.aii.crm.loyalty.web.persistence.mapper;

import com.aii.crm.loyalty.web.persistence.bo.IntegralPlanInstanceHis;
import com.aii.crm.loyalty.web.persistence.bo.IntegralPlanInstanceHisExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralPlanInstanceHisMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    long countByExample(IntegralPlanInstanceHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int deleteByExample(IntegralPlanInstanceHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int insert(IntegralPlanInstanceHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int insertSelective(IntegralPlanInstanceHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    List<IntegralPlanInstanceHis> selectByExample(IntegralPlanInstanceHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    IntegralPlanInstanceHis selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int updateByExampleSelective(@Param("record") IntegralPlanInstanceHis record, @Param("example") IntegralPlanInstanceHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int updateByExample(@Param("record") IntegralPlanInstanceHis record, @Param("example") IntegralPlanInstanceHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int updateByPrimaryKeySelective(IntegralPlanInstanceHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_plan_instance_his
     *
     * @mbg.generated Wed May 29 09:47:14 CST 2019
     */
    int updateByPrimaryKey(IntegralPlanInstanceHis record);
}