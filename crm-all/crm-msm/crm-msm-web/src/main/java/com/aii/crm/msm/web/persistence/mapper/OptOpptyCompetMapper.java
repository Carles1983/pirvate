package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptOpptyCompet;
import com.aii.crm.msm.web.persistence.bo.OptOpptyCompetExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptOpptyCompetMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    long countByExample(OptOpptyCompetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int deleteByExample(OptOpptyCompetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int deleteByPrimaryKey(Long opptyCompetId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int insert(OptOpptyCompet record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int insertSelective(OptOpptyCompet record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    List<OptOpptyCompet> selectByExample(OptOpptyCompetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    OptOpptyCompet selectByPrimaryKey(Long opptyCompetId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptOpptyCompet record, @Param("example") OptOpptyCompetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int updateByExample(@Param("record") OptOpptyCompet record, @Param("example") OptOpptyCompetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int updateByPrimaryKeySelective(OptOpptyCompet record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_compet
     *
     * @mbg.generated Wed May 29 10:29:04 CST 2019
     */
    int updateByPrimaryKey(OptOpptyCompet record);
}