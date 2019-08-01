package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptProposeService;
import com.aii.crm.msm.web.persistence.bo.OptProposeServiceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptProposeServiceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    long countByExample(OptProposeServiceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int deleteByExample(OptProposeServiceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int deleteByPrimaryKey(Long proposeServiceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int insert(OptProposeService record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int insertSelective(OptProposeService record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    List<OptProposeService> selectByExample(OptProposeServiceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    OptProposeService selectByPrimaryKey(Long proposeServiceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptProposeService record, @Param("example") OptProposeServiceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int updateByExample(@Param("record") OptProposeService record, @Param("example") OptProposeServiceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int updateByPrimaryKeySelective(OptProposeService record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_propose_service
     *
     * @mbg.generated Wed May 29 10:30:56 CST 2019
     */
    int updateByPrimaryKey(OptProposeService record);
}