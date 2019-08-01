package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupOrgDiffer;
import com.aii.crm.cm.web.persistence.bo.CmGroupOrgDifferExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupOrgDifferMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    long countByExample(CmGroupOrgDifferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int deleteByExample(CmGroupOrgDifferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int deleteByPrimaryKey(Long differId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int insert(CmGroupOrgDiffer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int insertSelective(CmGroupOrgDiffer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    List<CmGroupOrgDiffer> selectByExample(CmGroupOrgDifferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    CmGroupOrgDiffer selectByPrimaryKey(Long differId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupOrgDiffer record, @Param("example") CmGroupOrgDifferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int updateByExample(@Param("record") CmGroupOrgDiffer record, @Param("example") CmGroupOrgDifferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupOrgDiffer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ
     *
     * @mbg.generated Tue May 28 20:25:41 CST 2019
     */
    int updateByPrimaryKey(CmGroupOrgDiffer record);
}