package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmCustBadRecordH;
import com.aii.crm.cm.web.persistence.bo.CmCustBadRecordHExample;
import com.aii.crm.cm.web.persistence.bo.CmCustBadRecordHKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmCustBadRecordHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    long countByExample(CmCustBadRecordHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int deleteByExample(CmCustBadRecordHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int deleteByPrimaryKey(CmCustBadRecordHKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int insert(CmCustBadRecordH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int insertSelective(CmCustBadRecordH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    List<CmCustBadRecordH> selectByExample(CmCustBadRecordHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    CmCustBadRecordH selectByPrimaryKey(CmCustBadRecordHKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmCustBadRecordH record, @Param("example") CmCustBadRecordHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int updateByExample(@Param("record") CmCustBadRecordH record, @Param("example") CmCustBadRecordHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int updateByPrimaryKeySelective(CmCustBadRecordH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_bad_record_h
     *
     * @mbg.generated Tue May 28 20:11:00 CST 2019
     */
    int updateByPrimaryKey(CmCustBadRecordH record);
}