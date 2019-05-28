package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmxIndivCustomerH;
import com.aii.crm.cm.web.persistence.bo.CmxIndivCustomerHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmxIndivCustomerHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    long countByExample(CmxIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int deleteByExample(CmxIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int insert(CmxIndivCustomerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int insertSelective(CmxIndivCustomerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    List<CmxIndivCustomerH> selectByExample(CmxIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    CmxIndivCustomerH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmxIndivCustomerH record, @Param("example") CmxIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int updateByExample(@Param("record") CmxIndivCustomerH record, @Param("example") CmxIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int updateByPrimaryKeySelective(CmxIndivCustomerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:34:18 CST 2019
     */
    int updateByPrimaryKey(CmxIndivCustomerH record);
}