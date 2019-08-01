package com.aii.crm.shop.web.persistence.mapper;

import com.aii.crm.shop.web.persistence.bo.PreQualification;
import com.aii.crm.shop.web.persistence.bo.PreQualificationExample;
import com.aii.crm.shop.web.persistence.bo.PreQualificationWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PreQualificationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    long countByExample(PreQualificationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int deleteByExample(PreQualificationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int deleteByPrimaryKey(Long preqId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int insert(PreQualificationWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int insertSelective(PreQualificationWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    List<PreQualificationWithBLOBs> selectByExampleWithBLOBs(PreQualificationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    List<PreQualification> selectByExample(PreQualificationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    PreQualificationWithBLOBs selectByPrimaryKey(Long preqId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int updateByExampleSelective(@Param("record") PreQualificationWithBLOBs record, @Param("example") PreQualificationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int updateByExampleWithBLOBs(@Param("record") PreQualificationWithBLOBs record, @Param("example") PreQualificationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int updateByExample(@Param("record") PreQualification record, @Param("example") PreQualificationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int updateByPrimaryKeySelective(PreQualificationWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int updateByPrimaryKeyWithBLOBs(PreQualificationWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pre_qualification
     *
     * @mbg.generated Wed May 29 09:25:11 CST 2019
     */
    int updateByPrimaryKey(PreQualification record);
}