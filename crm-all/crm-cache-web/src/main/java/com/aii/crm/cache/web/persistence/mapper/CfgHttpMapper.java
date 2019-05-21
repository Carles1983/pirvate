package com.aii.crm.cache.web.persistence.mapper;

import com.aii.crm.cache.web.persistence.bo.CfgHttp;
import com.aii.crm.cache.web.persistence.bo.CfgHttpExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CfgHttpMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    long countByExample(CfgHttpExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int deleteByExample(CfgHttpExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int deleteByPrimaryKey(String cfgHttpCode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int insert(CfgHttp record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int insertSelective(CfgHttp record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    List<CfgHttp> selectByExample(CfgHttpExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    CfgHttp selectByPrimaryKey(String cfgHttpCode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int updateByExampleSelective(@Param("record") CfgHttp record, @Param("example") CfgHttpExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int updateByExample(@Param("record") CfgHttp record, @Param("example") CfgHttpExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int updateByPrimaryKeySelective(CfgHttp record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cfg_http
     *
     * @mbg.generated Tue May 21 09:52:07 CST 2019
     */
    int updateByPrimaryKey(CfgHttp record);
}