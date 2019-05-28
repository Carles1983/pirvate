package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmAddress;
import com.aii.crm.cm.web.persistence.bo.CmAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmAddressMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    long countByExample(CmAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int deleteByExample(CmAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int deleteByPrimaryKey(Long addrId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int insert(CmAddress record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int insertSelective(CmAddress record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    List<CmAddress> selectByExample(CmAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    CmAddress selectByPrimaryKey(Long addrId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmAddress record, @Param("example") CmAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int updateByExample(@Param("record") CmAddress record, @Param("example") CmAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int updateByPrimaryKeySelective(CmAddress record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_address
     *
     * @mbg.generated Tue May 28 20:05:49 CST 2019
     */
    int updateByPrimaryKey(CmAddress record);
}