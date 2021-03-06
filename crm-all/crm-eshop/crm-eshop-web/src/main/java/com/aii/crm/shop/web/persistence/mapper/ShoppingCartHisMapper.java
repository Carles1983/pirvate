package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.ShoppingCartHis;
import com.aii.crm.shop.web.persistence.bo.ShoppingCartHisExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShoppingCartHisMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    long countByExample(ShoppingCartHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int deleteByExample(ShoppingCartHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int deleteByPrimaryKey(Long cartId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int insert(ShoppingCartHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int insertSelective(ShoppingCartHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    List<ShoppingCartHis> selectByExample(ShoppingCartHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    ShoppingCartHis selectByPrimaryKey(Long cartId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int updateByExampleSelective(@Param("record") ShoppingCartHis record, @Param("example") ShoppingCartHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int updateByExample(@Param("record") ShoppingCartHis record, @Param("example") ShoppingCartHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int updateByPrimaryKeySelective(ShoppingCartHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping_cart_his
     *
     * @mbg.generated Wed May 29 09:26:19 CST 2019
     */
    int updateByPrimaryKey(ShoppingCartHis record);
}