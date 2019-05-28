package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmContactMedium;
import com.aii.crm.cm.web.persistence.bo.CmContactMediumExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmContactMediumMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    long countByExample(CmContactMediumExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int deleteByExample(CmContactMediumExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int deleteByPrimaryKey(Long contMedId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int insert(CmContactMedium record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int insertSelective(CmContactMedium record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    List<CmContactMedium> selectByExample(CmContactMediumExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    CmContactMedium selectByPrimaryKey(Long contMedId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmContactMedium record, @Param("example") CmContactMediumExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int updateByExample(@Param("record") CmContactMedium record, @Param("example") CmContactMediumExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int updateByPrimaryKeySelective(CmContactMedium record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium
     *
     * @mbg.generated Tue May 28 20:07:25 CST 2019
     */
    int updateByPrimaryKey(CmContactMedium record);
}