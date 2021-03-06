package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmxIndivCustomer;
import com.aii.crm.cm.web.persistence.bo.CmxIndivCustomerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmxIndivCustomerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    long countByExample(CmxIndivCustomerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int deleteByExample(CmxIndivCustomerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int deleteByPrimaryKey(Long custId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int insert(CmxIndivCustomer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int insertSelective(CmxIndivCustomer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    List<CmxIndivCustomer> selectByExample(CmxIndivCustomerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    CmxIndivCustomer selectByPrimaryKey(Long custId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmxIndivCustomer record, @Param("example") CmxIndivCustomerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int updateByExample(@Param("record") CmxIndivCustomer record, @Param("example") CmxIndivCustomerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int updateByPrimaryKeySelective(CmxIndivCustomer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cmx_indiv_customer
     *
     * @mbg.generated Tue May 28 20:34:10 CST 2019
     */
    int updateByPrimaryKey(CmxIndivCustomer record);
}