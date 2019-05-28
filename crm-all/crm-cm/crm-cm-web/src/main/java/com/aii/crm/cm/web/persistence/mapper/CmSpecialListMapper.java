package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmSpecialList;
import com.aii.crm.cm.web.persistence.bo.CmSpecialListExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmSpecialListMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    long countByExample(CmSpecialListExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int deleteByExample(CmSpecialListExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int deleteByPrimaryKey(Long specListId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int insert(CmSpecialList record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int insertSelective(CmSpecialList record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    List<CmSpecialList> selectByExample(CmSpecialListExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    CmSpecialList selectByPrimaryKey(Long specListId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmSpecialList record, @Param("example") CmSpecialListExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int updateByExample(@Param("record") CmSpecialList record, @Param("example") CmSpecialListExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int updateByPrimaryKeySelective(CmSpecialList record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_special_list
     *
     * @mbg.generated Tue May 28 20:33:19 CST 2019
     */
    int updateByPrimaryKey(CmSpecialList record);
}