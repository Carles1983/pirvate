package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupOrgStructH;
import com.aii.crm.cm.web.persistence.bo.CmGroupOrgStructHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupOrgStructHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    long countByExample(CmGroupOrgStructHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int deleteByExample(CmGroupOrgStructHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int insert(CmGroupOrgStructH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int insertSelective(CmGroupOrgStructH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    List<CmGroupOrgStructH> selectByExample(CmGroupOrgStructHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    CmGroupOrgStructH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupOrgStructH record, @Param("example") CmGroupOrgStructHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int updateByExample(@Param("record") CmGroupOrgStructH record, @Param("example") CmGroupOrgStructHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupOrgStructH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct_h
     *
     * @mbg.generated Tue May 28 20:26:11 CST 2019
     */
    int updateByPrimaryKey(CmGroupOrgStructH record);
}