package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.PaymentMethod;
import com.aii.crm.shop.web.persistence.bo.PaymentMethodExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PaymentMethodMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    long countByExample(PaymentMethodExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int deleteByExample(PaymentMethodExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int deleteByPrimaryKey(Short paymentMethodId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int insert(PaymentMethod record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int insertSelective(PaymentMethod record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    List<PaymentMethod> selectByExample(PaymentMethodExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    PaymentMethod selectByPrimaryKey(Short paymentMethodId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int updateByExampleSelective(@Param("record") PaymentMethod record, @Param("example") PaymentMethodExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int updateByExample(@Param("record") PaymentMethod record, @Param("example") PaymentMethodExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int updateByPrimaryKeySelective(PaymentMethod record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table payment_method
     *
     * @mbg.generated Wed May 29 09:24:56 CST 2019
     */
    int updateByPrimaryKey(PaymentMethod record);
}