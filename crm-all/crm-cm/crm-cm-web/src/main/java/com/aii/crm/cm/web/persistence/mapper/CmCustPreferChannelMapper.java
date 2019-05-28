package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmCustPreferChannel;
import com.aii.crm.cm.web.persistence.bo.CmCustPreferChannelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmCustPreferChannelMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    long countByExample(CmCustPreferChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int deleteByExample(CmCustPreferChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int deleteByPrimaryKey(Long preferChannelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int insert(CmCustPreferChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int insertSelective(CmCustPreferChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    List<CmCustPreferChannel> selectByExample(CmCustPreferChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    CmCustPreferChannel selectByPrimaryKey(Long preferChannelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmCustPreferChannel record, @Param("example") CmCustPreferChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int updateByExample(@Param("record") CmCustPreferChannel record, @Param("example") CmCustPreferChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int updateByPrimaryKeySelective(CmCustPreferChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_prefer_channel
     *
     * @mbg.generated Tue May 28 20:12:28 CST 2019
     */
    int updateByPrimaryKey(CmCustPreferChannel record);
}