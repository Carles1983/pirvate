package com.aii.crm.cache.web.persistence.mapper;

import com.aii.crm.cache.web.persistence.bo.CfgHttpMapping;
import com.aii.crm.cache.web.persistence.bo.CfgHttpMappingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CfgHttpMappingMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    long countByExample(CfgHttpMappingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int deleteByExample(CfgHttpMappingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int deleteByPrimaryKey(Long mappingId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int insert(CfgHttpMapping record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int insertSelective(CfgHttpMapping record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    List<CfgHttpMapping> selectByExample(CfgHttpMappingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    CfgHttpMapping selectByPrimaryKey(Long mappingId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int updateByExampleSelective(@Param("record") CfgHttpMapping record, @Param("example") CfgHttpMappingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int updateByExample(@Param("record") CfgHttpMapping record, @Param("example") CfgHttpMappingExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int updateByPrimaryKeySelective(CfgHttpMapping record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http_mapping
     *
     * @mbg.generated Mon May 20 09:49:50 CST 2019
     */
    int updateByPrimaryKey(CfgHttpMapping record);
}