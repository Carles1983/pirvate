package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupMemberH;
import com.aii.crm.cm.web.persistence.bo.CmGroupMemberHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupMemberHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    long countByExample(CmGroupMemberHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int deleteByExample(CmGroupMemberHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int insert(CmGroupMemberH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int insertSelective(CmGroupMemberH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    List<CmGroupMemberH> selectByExample(CmGroupMemberHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    CmGroupMemberH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupMemberH record, @Param("example") CmGroupMemberHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int updateByExample(@Param("record") CmGroupMemberH record, @Param("example") CmGroupMemberHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupMemberH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_member_h
     *
     * @mbg.generated Tue May 28 20:25:31 CST 2019
     */
    int updateByPrimaryKey(CmGroupMemberH record);
}