package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmOrgPartyH;
import com.aii.crm.cm.web.persistence.bo.CmOrgPartyHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmOrgPartyHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    long countByExample(CmOrgPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int deleteByExample(CmOrgPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int insert(CmOrgPartyH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int insertSelective(CmOrgPartyH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    List<CmOrgPartyH> selectByExample(CmOrgPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    CmOrgPartyH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmOrgPartyH record, @Param("example") CmOrgPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int updateByExample(@Param("record") CmOrgPartyH record, @Param("example") CmOrgPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int updateByPrimaryKeySelective(CmOrgPartyH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party_h
     *
     * @mbg.generated Tue May 28 20:30:02 CST 2019
     */
    int updateByPrimaryKey(CmOrgPartyH record);
}