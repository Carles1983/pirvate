package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupRelIndustry;
import com.aii.crm.cm.web.persistence.bo.CmGroupRelIndustryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupRelIndustryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    long countByExample(CmGroupRelIndustryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int deleteByExample(CmGroupRelIndustryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int deleteByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int insert(CmGroupRelIndustry record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int insertSelective(CmGroupRelIndustry record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    List<CmGroupRelIndustry> selectByExample(CmGroupRelIndustryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    CmGroupRelIndustry selectByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupRelIndustry record, @Param("example") CmGroupRelIndustryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int updateByExample(@Param("record") CmGroupRelIndustry record, @Param("example") CmGroupRelIndustryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupRelIndustry record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_rel_industry
     *
     * @mbg.generated Tue May 28 20:26:20 CST 2019
     */
    int updateByPrimaryKey(CmGroupRelIndustry record);
}