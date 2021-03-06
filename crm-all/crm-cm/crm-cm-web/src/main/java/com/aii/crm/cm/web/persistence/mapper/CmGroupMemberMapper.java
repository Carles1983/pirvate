package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupMember;
import com.aii.crm.cm.web.persistence.bo.CmGroupMemberExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupMemberMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    long countByExample(CmGroupMemberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int deleteByExample(CmGroupMemberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int deleteByPrimaryKey(Long custRelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int insert(CmGroupMember record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int insertSelective(CmGroupMember record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    List<CmGroupMember> selectByExample(CmGroupMemberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    CmGroupMember selectByPrimaryKey(Long custRelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupMember record, @Param("example") CmGroupMemberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int updateByExample(@Param("record") CmGroupMember record, @Param("example") CmGroupMemberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupMember record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member
     *
     * @mbg.generated Tue May 28 20:25:07 CST 2019
     */
    int updateByPrimaryKey(CmGroupMember record);
}