package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupOrgDifferH;
import com.aii.crm.cm.web.persistence.bo.CmGroupOrgDifferHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupOrgDifferHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    long countByExample(CmGroupOrgDifferHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int deleteByExample(CmGroupOrgDifferHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int insert(CmGroupOrgDifferH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int insertSelective(CmGroupOrgDifferH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    List<CmGroupOrgDifferH> selectByExample(CmGroupOrgDifferHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    CmGroupOrgDifferH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupOrgDifferH record, @Param("example") CmGroupOrgDifferHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int updateByExample(@Param("record") CmGroupOrgDifferH record, @Param("example") CmGroupOrgDifferHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupOrgDifferH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_differ_h
     *
     * @mbg.generated Tue May 28 20:25:51 CST 2019
     */
    int updateByPrimaryKey(CmGroupOrgDifferH record);
}