package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmGroupManager;
import com.aii.crm.cm.web.persistence.bo.CmGroupManagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmGroupManagerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    long countByExample(CmGroupManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int deleteByExample(CmGroupManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int deleteByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int insert(CmGroupManager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int insertSelective(CmGroupManager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    List<CmGroupManager> selectByExample(CmGroupManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    CmGroupManager selectByPrimaryKey(Long relId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmGroupManager record, @Param("example") CmGroupManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int updateByExample(@Param("record") CmGroupManager record, @Param("example") CmGroupManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int updateByPrimaryKeySelective(CmGroupManager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_group_manager
     *
     * @mbg.generated Tue May 28 20:24:46 CST 2019
     */
    int updateByPrimaryKey(CmGroupManager record);
}