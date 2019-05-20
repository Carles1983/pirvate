package com.aii.crm.cache.web.persistence.mapper;

import com.aii.crm.cache.web.persistence.bo.CfgHttpClient;
import com.aii.crm.cache.web.persistence.bo.CfgHttpClientExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CfgHttpClientMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    long countByExample(CfgHttpClientExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int deleteByExample(CfgHttpClientExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int deleteByPrimaryKey(String cfgHttpClientCode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int insert(CfgHttpClient record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int insertSelective(CfgHttpClient record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    List<CfgHttpClient> selectByExample(CfgHttpClientExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    CfgHttpClient selectByPrimaryKey(String cfgHttpClientCode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int updateByExampleSelective(@Param("record") CfgHttpClient record, @Param("example") CfgHttpClientExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int updateByExample(@Param("record") CfgHttpClient record, @Param("example") CfgHttpClientExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int updateByPrimaryKeySelective(CfgHttpClient record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_client
     *
     * @mbg.generated Mon May 20 09:49:01 CST 2019
     */
    int updateByPrimaryKey(CfgHttpClient record);
}