package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptPreMsisdn;
import com.aii.crm.msm.web.persistence.bo.OptPreMsisdnExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptPreMsisdnMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    long countByExample(OptPreMsisdnExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int deleteByExample(OptPreMsisdnExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int deleteByPrimaryKey(Long preMsisdnId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int insert(OptPreMsisdn record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int insertSelective(OptPreMsisdn record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    List<OptPreMsisdn> selectByExample(OptPreMsisdnExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    OptPreMsisdn selectByPrimaryKey(Long preMsisdnId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptPreMsisdn record, @Param("example") OptPreMsisdnExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int updateByExample(@Param("record") OptPreMsisdn record, @Param("example") OptPreMsisdnExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int updateByPrimaryKeySelective(OptPreMsisdn record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_msisdn
     *
     * @mbg.generated Wed May 29 10:29:33 CST 2019
     */
    int updateByPrimaryKey(OptPreMsisdn record);
}