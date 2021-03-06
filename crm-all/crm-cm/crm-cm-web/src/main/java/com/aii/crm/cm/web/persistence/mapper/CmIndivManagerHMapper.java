package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmIndivManagerH;
import com.aii.crm.cm.web.persistence.bo.CmIndivManagerHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmIndivManagerHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    long countByExample(CmIndivManagerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int deleteByExample(CmIndivManagerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int insert(CmIndivManagerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int insertSelective(CmIndivManagerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    List<CmIndivManagerH> selectByExample(CmIndivManagerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    CmIndivManagerH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmIndivManagerH record, @Param("example") CmIndivManagerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int updateByExample(@Param("record") CmIndivManagerH record, @Param("example") CmIndivManagerHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int updateByPrimaryKeySelective(CmIndivManagerH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_indiv_manager_h
     *
     * @mbg.generated Tue May 28 20:28:36 CST 2019
     */
    int updateByPrimaryKey(CmIndivManagerH record);
}