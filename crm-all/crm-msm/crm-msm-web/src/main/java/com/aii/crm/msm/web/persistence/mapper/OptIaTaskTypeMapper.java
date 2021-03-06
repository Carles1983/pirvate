package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptIaTaskType;
import com.aii.crm.msm.web.persistence.bo.OptIaTaskTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptIaTaskTypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    long countByExample(OptIaTaskTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int deleteByExample(OptIaTaskTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int deleteByPrimaryKey(Long interactionTaskTypeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int insert(OptIaTaskType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int insertSelective(OptIaTaskType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    List<OptIaTaskType> selectByExample(OptIaTaskTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    OptIaTaskType selectByPrimaryKey(Long interactionTaskTypeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptIaTaskType record, @Param("example") OptIaTaskTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int updateByExample(@Param("record") OptIaTaskType record, @Param("example") OptIaTaskTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int updateByPrimaryKeySelective(OptIaTaskType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_type
     *
     * @mbg.generated Wed May 29 10:27:20 CST 2019
     */
    int updateByPrimaryKey(OptIaTaskType record);
}