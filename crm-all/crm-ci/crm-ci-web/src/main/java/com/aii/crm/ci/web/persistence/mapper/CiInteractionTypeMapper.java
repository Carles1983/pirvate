package com.aii.crm.ci.web.persistence.mapper;

import com.aii.crm.ci.web.persistence.bo.CiInteractionType;
import com.aii.crm.ci.web.persistence.bo.CiInteractionTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CiInteractionTypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    long countByExample(CiInteractionTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int deleteByExample(CiInteractionTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int deleteByPrimaryKey(Long interactionTypeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int insert(CiInteractionType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int insertSelective(CiInteractionType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    List<CiInteractionType> selectByExample(CiInteractionTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    CiInteractionType selectByPrimaryKey(Long interactionTypeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int updateByExampleSelective(@Param("record") CiInteractionType record, @Param("example") CiInteractionTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int updateByExample(@Param("record") CiInteractionType record, @Param("example") CiInteractionTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int updateByPrimaryKeySelective(CiInteractionType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_type
     *
     * @mbg.generated Tue May 21 15:49:27 CST 2019
     */
    int updateByPrimaryKey(CiInteractionType record);
}