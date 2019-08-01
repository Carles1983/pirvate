package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.MsmCompetitorSwot;
import com.aii.crm.msm.web.persistence.bo.MsmCompetitorSwotExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MsmCompetitorSwotMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    long countByExample(MsmCompetitorSwotExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int deleteByExample(MsmCompetitorSwotExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int deleteByPrimaryKey(Long competitorSwotId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int insert(MsmCompetitorSwot record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int insertSelective(MsmCompetitorSwot record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    List<MsmCompetitorSwot> selectByExample(MsmCompetitorSwotExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    MsmCompetitorSwot selectByPrimaryKey(Long competitorSwotId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int updateByExampleSelective(@Param("record") MsmCompetitorSwot record, @Param("example") MsmCompetitorSwotExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int updateByExample(@Param("record") MsmCompetitorSwot record, @Param("example") MsmCompetitorSwotExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int updateByPrimaryKeySelective(MsmCompetitorSwot record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table msm_competitor_swot
     *
     * @mbg.generated Wed May 29 10:23:13 CST 2019
     */
    int updateByPrimaryKey(MsmCompetitorSwot record);
}