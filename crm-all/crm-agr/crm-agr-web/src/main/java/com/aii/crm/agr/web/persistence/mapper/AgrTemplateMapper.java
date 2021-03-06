package com.aii.crm.agr.web.persistence.mapper;

import com.aii.crm.agr.web.persistence.bo.AgrTemplate;
import com.aii.crm.agr.web.persistence.bo.AgrTemplateExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AgrTemplateMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    long countByExample(AgrTemplateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int deleteByExample(AgrTemplateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int deleteByPrimaryKey(Long agreementTemplateId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int insert(AgrTemplate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int insertSelective(AgrTemplate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    List<AgrTemplate> selectByExample(AgrTemplateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    AgrTemplate selectByPrimaryKey(Long agreementTemplateId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByExampleSelective(@Param("record") AgrTemplate record, @Param("example") AgrTemplateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByExample(@Param("record") AgrTemplate record, @Param("example") AgrTemplateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByPrimaryKeySelective(AgrTemplate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_template
     *
     * @mbg.generated Sat May 18 13:04:15 CST 2019
     */
    int updateByPrimaryKey(AgrTemplate record);
}