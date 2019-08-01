package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmPartyPermission;
import com.aii.crm.cm.web.persistence.bo.CmPartyPermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmPartyPermissionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    long countByExample(CmPartyPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int deleteByExample(CmPartyPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int deleteByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int insert(CmPartyPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int insertSelective(CmPartyPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    List<CmPartyPermission> selectByExample(CmPartyPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    CmPartyPermission selectByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmPartyPermission record, @Param("example") CmPartyPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int updateByExample(@Param("record") CmPartyPermission record, @Param("example") CmPartyPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int updateByPrimaryKeySelective(CmPartyPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_permission
     *
     * @mbg.generated Tue May 28 20:32:29 CST 2019
     */
    int updateByPrimaryKey(CmPartyPermission record);
}