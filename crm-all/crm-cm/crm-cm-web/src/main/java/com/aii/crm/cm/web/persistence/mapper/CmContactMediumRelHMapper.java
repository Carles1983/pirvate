package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmContactMediumRelH;
import com.aii.crm.cm.web.persistence.bo.CmContactMediumRelHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmContactMediumRelHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    long countByExample(CmContactMediumRelHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int deleteByExample(CmContactMediumRelHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int insert(CmContactMediumRelH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int insertSelective(CmContactMediumRelH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    List<CmContactMediumRelH> selectByExample(CmContactMediumRelHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    CmContactMediumRelH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmContactMediumRelH record, @Param("example") CmContactMediumRelHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int updateByExample(@Param("record") CmContactMediumRelH record, @Param("example") CmContactMediumRelHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int updateByPrimaryKeySelective(CmContactMediumRelH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_contact_medium_rel_h
     *
     * @mbg.generated Tue May 28 20:08:00 CST 2019
     */
    int updateByPrimaryKey(CmContactMediumRelH record);
}