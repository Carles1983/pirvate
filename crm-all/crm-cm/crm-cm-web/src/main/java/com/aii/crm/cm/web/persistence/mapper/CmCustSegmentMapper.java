package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmCustSegment;
import com.aii.crm.cm.web.persistence.bo.CmCustSegmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmCustSegmentMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    long countByExample(CmCustSegmentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int deleteByExample(CmCustSegmentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int deleteByPrimaryKey(Long segmentId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int insert(CmCustSegment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int insertSelective(CmCustSegment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    List<CmCustSegment> selectByExample(CmCustSegmentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    CmCustSegment selectByPrimaryKey(Long segmentId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmCustSegment record, @Param("example") CmCustSegmentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int updateByExample(@Param("record") CmCustSegment record, @Param("example") CmCustSegmentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int updateByPrimaryKeySelective(CmCustSegment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_cust_segment
     *
     * @mbg.generated Tue May 28 20:12:58 CST 2019
     */
    int updateByPrimaryKey(CmCustSegment record);
}