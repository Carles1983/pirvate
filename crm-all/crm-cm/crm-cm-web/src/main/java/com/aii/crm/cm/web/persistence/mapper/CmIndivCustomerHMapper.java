package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmIndivCustomerH;
import com.aii.crm.cm.web.persistence.bo.CmIndivCustomerHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmIndivCustomerHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    long countByExample(CmIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int deleteByExample(CmIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int insert(CmIndivCustomerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int insertSelective(CmIndivCustomerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    List<CmIndivCustomerH> selectByExample(CmIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    CmIndivCustomerH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmIndivCustomerH record, @Param("example") CmIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int updateByExample(@Param("record") CmIndivCustomerH record, @Param("example") CmIndivCustomerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int updateByPrimaryKeySelective(CmIndivCustomerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_customer_h
     *
     * @mbg.generated Tue May 28 20:27:50 CST 2019
     */
    int updateByPrimaryKey(CmIndivCustomerH record);
}