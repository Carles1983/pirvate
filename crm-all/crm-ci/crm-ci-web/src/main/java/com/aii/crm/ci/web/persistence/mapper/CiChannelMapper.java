package com.aii.crm.ci.web.persistence.mapper;

import com.aii.crm.ci.web.persistence.bo.CiChannel;
import com.aii.crm.ci.web.persistence.bo.CiChannelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CiChannelMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    long countByExample(CiChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int deleteByExample(CiChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int deleteByPrimaryKey(Long channelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int insert(CiChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int insertSelective(CiChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    List<CiChannel> selectByExample(CiChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    CiChannel selectByPrimaryKey(Long channelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int updateByExampleSelective(@Param("record") CiChannel record, @Param("example") CiChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int updateByExample(@Param("record") CiChannel record, @Param("example") CiChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int updateByPrimaryKeySelective(CiChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_channel
     *
     * @mbg.generated Tue May 21 15:46:10 CST 2019
     */
    int updateByPrimaryKey(CiChannel record);
}