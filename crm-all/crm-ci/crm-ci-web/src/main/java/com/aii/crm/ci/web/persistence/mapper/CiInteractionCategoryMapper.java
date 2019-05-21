package com.aii.crm.ci.web.persistence.mapper;

import com.aii.crm.ci.web.persistence.bo.CiInteractionCategory;
import com.aii.crm.ci.web.persistence.bo.CiInteractionCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CiInteractionCategoryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    long countByExample(CiInteractionCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int deleteByExample(CiInteractionCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int deleteByPrimaryKey(Long interactionCategoryId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int insert(CiInteractionCategory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int insertSelective(CiInteractionCategory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    List<CiInteractionCategory> selectByExample(CiInteractionCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    CiInteractionCategory selectByPrimaryKey(Long interactionCategoryId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int updateByExampleSelective(@Param("record") CiInteractionCategory record, @Param("example") CiInteractionCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int updateByExample(@Param("record") CiInteractionCategory record, @Param("example") CiInteractionCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int updateByPrimaryKeySelective(CiInteractionCategory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_interaction_category
     *
     * @mbg.generated Tue May 21 15:48:36 CST 2019
     */
    int updateByPrimaryKey(CiInteractionCategory record);
}