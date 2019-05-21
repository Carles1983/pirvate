package com.aii.crm.agr.web.persistence.mapper;

import com.aii.crm.agr.web.persistence.bo.AgrTemplateH;
import com.aii.crm.agr.web.persistence.bo.AgrTemplateHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AgrTemplateHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    long countByExample(AgrTemplateHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int deleteByExample(AgrTemplateHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int deleteByPrimaryKey(Long agreementTemplateHId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int insert(AgrTemplateH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int insertSelective(AgrTemplateH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    List<AgrTemplateH> selectByExample(AgrTemplateHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    AgrTemplateH selectByPrimaryKey(Long agreementTemplateHId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByExampleSelective(@Param("record") AgrTemplateH record, @Param("example") AgrTemplateHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByExample(@Param("record") AgrTemplateH record, @Param("example") AgrTemplateHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByPrimaryKeySelective(AgrTemplateH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template_h
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByPrimaryKey(AgrTemplateH record);
}