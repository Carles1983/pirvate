package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.ShoppingCartDeliveryHis;
import com.aii.crm.shop.web.persistence.bo.ShoppingCartDeliveryHisExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShoppingCartDeliveryHisMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    long countByExample(ShoppingCartDeliveryHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int deleteByExample(ShoppingCartDeliveryHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int deleteByPrimaryKey(Long deliveryId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int insert(ShoppingCartDeliveryHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int insertSelective(ShoppingCartDeliveryHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    List<ShoppingCartDeliveryHis> selectByExample(ShoppingCartDeliveryHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    ShoppingCartDeliveryHis selectByPrimaryKey(Long deliveryId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int updateByExampleSelective(@Param("record") ShoppingCartDeliveryHis record, @Param("example") ShoppingCartDeliveryHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int updateByExample(@Param("record") ShoppingCartDeliveryHis record, @Param("example") ShoppingCartDeliveryHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int updateByPrimaryKeySelective(ShoppingCartDeliveryHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_delivery_his
     *
     * @mbg.generated Wed May 29 09:25:55 CST 2019
     */
    int updateByPrimaryKey(ShoppingCartDeliveryHis record);
}