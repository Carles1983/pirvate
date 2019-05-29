package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptExtTblFieldDef;
import com.aii.crm.msm.web.persistence.bo.OptExtTblFieldDefExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptExtTblFieldDefMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    long countByExample(OptExtTblFieldDefExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int deleteByExample(OptExtTblFieldDefExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int deleteByPrimaryKey(Long fieldId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int insert(OptExtTblFieldDef record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int insertSelective(OptExtTblFieldDef record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    List<OptExtTblFieldDef> selectByExample(OptExtTblFieldDefExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    OptExtTblFieldDef selectByPrimaryKey(Long fieldId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptExtTblFieldDef record, @Param("example") OptExtTblFieldDefExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int updateByExample(@Param("record") OptExtTblFieldDef record, @Param("example") OptExtTblFieldDefExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int updateByPrimaryKeySelective(OptExtTblFieldDef record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_ext_tbl_field_def
     *
     * @mbg.generated Wed May 29 10:26:25 CST 2019
     */
    int updateByPrimaryKey(OptExtTblFieldDef record);
}