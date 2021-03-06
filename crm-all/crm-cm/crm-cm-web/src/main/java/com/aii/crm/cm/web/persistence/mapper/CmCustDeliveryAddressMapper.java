package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmCustDeliveryAddress;
import com.aii.crm.cm.web.persistence.bo.CmCustDeliveryAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmCustDeliveryAddressMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    long countByExample(CmCustDeliveryAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int deleteByExample(CmCustDeliveryAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int deleteByPrimaryKey(Long custContRelaId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int insert(CmCustDeliveryAddress record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int insertSelective(CmCustDeliveryAddress record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    List<CmCustDeliveryAddress> selectByExample(CmCustDeliveryAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    CmCustDeliveryAddress selectByPrimaryKey(Long custContRelaId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmCustDeliveryAddress record, @Param("example") CmCustDeliveryAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int updateByExample(@Param("record") CmCustDeliveryAddress record, @Param("example") CmCustDeliveryAddressExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int updateByPrimaryKeySelective(CmCustDeliveryAddress record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_delivery_address
     *
     * @mbg.generated Tue May 28 20:12:16 CST 2019
     */
    int updateByPrimaryKey(CmCustDeliveryAddress record);
}