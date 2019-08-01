package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.MsmOptyCompetRela;
import com.aii.crm.msm.web.persistence.bo.MsmOptyCompetRelaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MsmOptyCompetRelaMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    long countByExample(MsmOptyCompetRelaExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int deleteByExample(MsmOptyCompetRelaExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int deleteByPrimaryKey(Long relaId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int insert(MsmOptyCompetRela record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int insertSelective(MsmOptyCompetRela record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    List<MsmOptyCompetRela> selectByExample(MsmOptyCompetRelaExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    MsmOptyCompetRela selectByPrimaryKey(Long relaId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int updateByExampleSelective(@Param("record") MsmOptyCompetRela record, @Param("example") MsmOptyCompetRelaExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int updateByExample(@Param("record") MsmOptyCompetRela record, @Param("example") MsmOptyCompetRelaExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int updateByPrimaryKeySelective(MsmOptyCompetRela record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_opty_compet_rela
     *
     * @mbg.generated Wed May 29 10:24:16 CST 2019
     */
    int updateByPrimaryKey(MsmOptyCompetRela record);
}