package com.aii.crm.ci.web.persistence.mapper;

import com.aii.crm.ci.web.persistence.bo.CiInteraction;
import com.aii.crm.ci.web.persistence.bo.CiInteractionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CiInteractionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    long countByExample(CiInteractionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int deleteByExample(CiInteractionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int deleteByPrimaryKey(Long interactionId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int insert(CiInteraction record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int insertSelective(CiInteraction record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    List<CiInteraction> selectByExample(CiInteractionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    CiInteraction selectByPrimaryKey(Long interactionId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int updateByExampleSelective(@Param("record") CiInteraction record, @Param("example") CiInteractionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int updateByExample(@Param("record") CiInteraction record, @Param("example") CiInteractionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int updateByPrimaryKeySelective(CiInteraction record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction
     *
     * @mbg.generated Tue May 21 15:47:29 CST 2019
     */
    int updateByPrimaryKey(CiInteraction record);
}