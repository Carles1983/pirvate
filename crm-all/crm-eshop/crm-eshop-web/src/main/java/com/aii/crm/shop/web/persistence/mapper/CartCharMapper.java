package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.CartChar;
import com.aii.crm.shop.web.persistence.bo.CartCharExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CartCharMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    long countByExample(CartCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int deleteByExample(CartCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int deleteByPrimaryKey(Long cartCharId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int insert(CartChar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int insertSelective(CartChar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    List<CartChar> selectByExample(CartCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    CartChar selectByPrimaryKey(Long cartCharId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int updateByExampleSelective(@Param("record") CartChar record, @Param("example") CartCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int updateByExample(@Param("record") CartChar record, @Param("example") CartCharExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int updateByPrimaryKeySelective(CartChar record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart_char
     *
     * @mbg.generated Wed May 29 09:22:33 CST 2019
     */
    int updateByPrimaryKey(CartChar record);
}