package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptIaTaskReminder;
import com.aii.crm.msm.web.persistence.bo.OptIaTaskReminderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptIaTaskReminderMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    long countByExample(OptIaTaskReminderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int deleteByExample(OptIaTaskReminderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int deleteByPrimaryKey(Long reminderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int insert(OptIaTaskReminder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int insertSelective(OptIaTaskReminder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    List<OptIaTaskReminder> selectByExample(OptIaTaskReminderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    OptIaTaskReminder selectByPrimaryKey(Long reminderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptIaTaskReminder record, @Param("example") OptIaTaskReminderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int updateByExample(@Param("record") OptIaTaskReminder record, @Param("example") OptIaTaskReminderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int updateByPrimaryKeySelective(OptIaTaskReminder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ia_task_reminder
     *
     * @mbg.generated Wed May 29 10:27:05 CST 2019
     */
    int updateByPrimaryKey(OptIaTaskReminder record);
}