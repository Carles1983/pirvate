package com.aii.crm.loyalty.web.persistence.mapper;

import com.aii.crm.loyalty.web.persistence.bo.IntegralBookHis;
import com.aii.crm.loyalty.web.persistence.bo.IntegralBookHisExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralBookHisMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    long countByExample(IntegralBookHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int deleteByExample(IntegralBookHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int insert(IntegralBookHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int insertSelective(IntegralBookHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    List<IntegralBookHis> selectByExample(IntegralBookHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    IntegralBookHis selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int updateByExampleSelective(@Param("record") IntegralBookHis record, @Param("example") IntegralBookHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int updateByExample(@Param("record") IntegralBookHis record, @Param("example") IntegralBookHisExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int updateByPrimaryKeySelective(IntegralBookHis record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table integral_book_his
     *
     * @mbg.generated Wed May 29 09:45:47 CST 2019
     */
    int updateByPrimaryKey(IntegralBookHis record);
}