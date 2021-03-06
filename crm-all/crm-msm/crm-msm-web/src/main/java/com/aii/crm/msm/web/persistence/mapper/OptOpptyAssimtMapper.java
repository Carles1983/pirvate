package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptOpptyAssimt;
import com.aii.crm.msm.web.persistence.bo.OptOpptyAssimtExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptOpptyAssimtMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    long countByExample(OptOpptyAssimtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int deleteByExample(OptOpptyAssimtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int deleteByPrimaryKey(Long opptyAssimtId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int insert(OptOpptyAssimt record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int insertSelective(OptOpptyAssimt record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    List<OptOpptyAssimt> selectByExample(OptOpptyAssimtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    OptOpptyAssimt selectByPrimaryKey(Long opptyAssimtId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptOpptyAssimt record, @Param("example") OptOpptyAssimtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int updateByExample(@Param("record") OptOpptyAssimt record, @Param("example") OptOpptyAssimtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int updateByPrimaryKeySelective(OptOpptyAssimt record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_oppty_assimt
     *
     * @mbg.generated Wed May 29 10:28:45 CST 2019
     */
    int updateByPrimaryKey(OptOpptyAssimt record);
}