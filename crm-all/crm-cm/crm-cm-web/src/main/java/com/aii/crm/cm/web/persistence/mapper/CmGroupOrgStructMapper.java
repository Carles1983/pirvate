package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupOrgStruct;
import com.aii.crm.cm.web.persistence.bo.CmGroupOrgStructExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupOrgStructMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    long countByExample(CmGroupOrgStructExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int deleteByExample(CmGroupOrgStructExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int deleteByPrimaryKey(Long deptId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int insert(CmGroupOrgStruct record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int insertSelective(CmGroupOrgStruct record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    List<CmGroupOrgStruct> selectByExample(CmGroupOrgStructExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    CmGroupOrgStruct selectByPrimaryKey(Long deptId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupOrgStruct record, @Param("example") CmGroupOrgStructExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int updateByExample(@Param("record") CmGroupOrgStruct record, @Param("example") CmGroupOrgStructExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupOrgStruct record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_org_struct
     *
     * @mbg.generated Tue May 28 20:26:01 CST 2019
     */
    int updateByPrimaryKey(CmGroupOrgStruct record);
}