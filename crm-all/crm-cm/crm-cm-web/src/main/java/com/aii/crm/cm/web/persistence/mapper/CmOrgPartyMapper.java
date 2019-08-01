package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmOrgParty;
import com.aii.crm.cm.web.persistence.bo.CmOrgPartyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmOrgPartyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    long countByExample(CmOrgPartyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int deleteByExample(CmOrgPartyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int deleteByPrimaryKey(Long partyId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int insert(CmOrgParty record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int insertSelective(CmOrgParty record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    List<CmOrgParty> selectByExample(CmOrgPartyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    CmOrgParty selectByPrimaryKey(Long partyId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmOrgParty record, @Param("example") CmOrgPartyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int updateByExample(@Param("record") CmOrgParty record, @Param("example") CmOrgPartyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int updateByPrimaryKeySelective(CmOrgParty record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_org_party
     *
     * @mbg.generated Tue May 28 20:29:49 CST 2019
     */
    int updateByPrimaryKey(CmOrgParty record);
}