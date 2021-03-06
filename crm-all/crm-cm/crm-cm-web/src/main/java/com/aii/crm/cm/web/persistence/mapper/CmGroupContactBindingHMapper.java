package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupContactBindingH;
import com.aii.crm.cm.web.persistence.bo.CmGroupContactBindingHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupContactBindingHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    long countByExample(CmGroupContactBindingHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int deleteByExample(CmGroupContactBindingHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int insert(CmGroupContactBindingH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int insertSelective(CmGroupContactBindingH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    List<CmGroupContactBindingH> selectByExample(CmGroupContactBindingHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    CmGroupContactBindingH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupContactBindingH record, @Param("example") CmGroupContactBindingHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int updateByExample(@Param("record") CmGroupContactBindingH record, @Param("example") CmGroupContactBindingHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupContactBindingH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_contact_binding_h
     *
     * @mbg.generated Tue May 28 20:22:56 CST 2019
     */
    int updateByPrimaryKey(CmGroupContactBindingH record);
}