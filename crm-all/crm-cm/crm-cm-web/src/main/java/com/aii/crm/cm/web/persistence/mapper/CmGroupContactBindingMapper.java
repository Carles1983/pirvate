package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupContactBinding;
import com.aii.crm.cm.web.persistence.bo.CmGroupContactBindingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupContactBindingMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    long countByExample(CmGroupContactBindingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int deleteByExample(CmGroupContactBindingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int deleteByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int insert(CmGroupContactBinding record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int insertSelective(CmGroupContactBinding record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    List<CmGroupContactBinding> selectByExample(CmGroupContactBindingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    CmGroupContactBinding selectByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupContactBinding record, @Param("example") CmGroupContactBindingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int updateByExample(@Param("record") CmGroupContactBinding record, @Param("example") CmGroupContactBindingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupContactBinding record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding
     *
     * @mbg.generated Tue May 28 20:22:44 CST 2019
     */
    int updateByPrimaryKey(CmGroupContactBinding record);
}