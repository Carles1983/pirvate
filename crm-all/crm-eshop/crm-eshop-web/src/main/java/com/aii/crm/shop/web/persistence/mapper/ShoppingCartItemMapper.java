package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.ShoppingCartItem;
import com.aii.crm.shop.web.persistence.bo.ShoppingCartItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShoppingCartItemMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    long countByExample(ShoppingCartItemExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int deleteByExample(ShoppingCartItemExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int deleteByPrimaryKey(Long cartItemId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int insert(ShoppingCartItem record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int insertSelective(ShoppingCartItem record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    List<ShoppingCartItem> selectByExample(ShoppingCartItemExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    ShoppingCartItem selectByPrimaryKey(Long cartItemId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int updateByExampleSelective(@Param("record") ShoppingCartItem record, @Param("example") ShoppingCartItemExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int updateByExample(@Param("record") ShoppingCartItem record, @Param("example") ShoppingCartItemExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int updateByPrimaryKeySelective(ShoppingCartItem record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_item
     *
     * @mbg.generated Wed May 29 09:26:36 CST 2019
     */
    int updateByPrimaryKey(ShoppingCartItem record);
}