package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmOrganizationChar;
import com.aii.crm.cm.web.persistence.bo.CmOrganizationCharExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmOrganizationCharMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    long countByExample(CmOrganizationCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int deleteByExample(CmOrganizationCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int deleteByPrimaryKey(Long orgAttrId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int insert(CmOrganizationChar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int insertSelective(CmOrganizationChar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    List<CmOrganizationChar> selectByExample(CmOrganizationCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    CmOrganizationChar selectByPrimaryKey(Long orgAttrId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmOrganizationChar record, @Param("example") CmOrganizationCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int updateByExample(@Param("record") CmOrganizationChar record, @Param("example") CmOrganizationCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int updateByPrimaryKeySelective(CmOrganizationChar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_organization_char
     *
     * @mbg.generated Tue May 28 20:30:27 CST 2019
     */
    int updateByPrimaryKey(CmOrganizationChar record);
}