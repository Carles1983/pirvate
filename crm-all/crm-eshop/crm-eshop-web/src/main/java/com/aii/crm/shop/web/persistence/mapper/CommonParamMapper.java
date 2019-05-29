package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.CommonParam;
import com.aii.crm.shop.web.persistence.bo.CommonParamExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommonParamMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    long countByExample(CommonParamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int deleteByExample(CommonParamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int deleteByPrimaryKey(Long paramId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int insert(CommonParam record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int insertSelective(CommonParam record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    List<CommonParam> selectByExample(CommonParamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    CommonParam selectByPrimaryKey(Long paramId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int updateByExampleSelective(@Param("record") CommonParam record, @Param("example") CommonParamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int updateByExample(@Param("record") CommonParam record, @Param("example") CommonParamExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int updateByPrimaryKeySelective(CommonParam record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table common_param
     *
     * @mbg.generated Wed May 29 09:23:22 CST 2019
     */
    int updateByPrimaryKey(CommonParam record);
}