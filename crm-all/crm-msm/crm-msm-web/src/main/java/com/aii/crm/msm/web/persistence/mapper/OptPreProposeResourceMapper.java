package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptPreProposeResource;
import com.aii.crm.msm.web.persistence.bo.OptPreProposeResourceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptPreProposeResourceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    long countByExample(OptPreProposeResourceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int deleteByExample(OptPreProposeResourceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int deleteByPrimaryKey(Long preResourceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int insert(OptPreProposeResource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int insertSelective(OptPreProposeResource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    List<OptPreProposeResource> selectByExample(OptPreProposeResourceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    OptPreProposeResource selectByPrimaryKey(Long preResourceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptPreProposeResource record, @Param("example") OptPreProposeResourceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int updateByExample(@Param("record") OptPreProposeResource record, @Param("example") OptPreProposeResourceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int updateByPrimaryKeySelective(OptPreProposeResource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_resource
     *
     * @mbg.generated Wed May 29 10:29:51 CST 2019
     */
    int updateByPrimaryKey(OptPreProposeResource record);
}