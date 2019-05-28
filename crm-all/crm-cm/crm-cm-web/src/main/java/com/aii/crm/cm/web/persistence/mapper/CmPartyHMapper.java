package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmPartyH;
import com.aii.crm.cm.web.persistence.bo.CmPartyHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmPartyHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    long countByExample(CmPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int deleteByExample(CmPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int insert(CmPartyH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int insertSelective(CmPartyH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    List<CmPartyH> selectByExample(CmPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    CmPartyH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmPartyH record, @Param("example") CmPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int updateByExample(@Param("record") CmPartyH record, @Param("example") CmPartyHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int updateByPrimaryKeySelective(CmPartyH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_party_h
     *
     * @mbg.generated Tue May 28 20:32:17 CST 2019
     */
    int updateByPrimaryKey(CmPartyH record);
}