package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.OrderInfoHis;
import com.aii.crm.shop.web.persistence.bo.OrderInfoHisExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderInfoHisMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    long countByExample(OrderInfoHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int deleteByExample(OrderInfoHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int deleteByPrimaryKey(Long orderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int insert(OrderInfoHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int insertSelective(OrderInfoHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    List<OrderInfoHis> selectByExample(OrderInfoHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    OrderInfoHis selectByPrimaryKey(Long orderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int updateByExampleSelective(@Param("record") OrderInfoHis record, @Param("example") OrderInfoHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int updateByExample(@Param("record") OrderInfoHis record, @Param("example") OrderInfoHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int updateByPrimaryKeySelective(OrderInfoHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_info_his
     *
     * @mbg.generated Wed May 29 09:23:56 CST 2019
     */
    int updateByPrimaryKey(OrderInfoHis record);
}