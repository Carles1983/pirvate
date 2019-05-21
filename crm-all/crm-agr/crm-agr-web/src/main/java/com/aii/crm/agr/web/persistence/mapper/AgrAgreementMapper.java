package com.aii.crm.agr.web.persistence.mapper;

import com.aii.crm.agr.core.persistence.bo.AgrAgreement;
import com.aii.crm.agr.core.persistence.bo.AgrAgreementExample;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

public interface AgrAgreementMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    long countByExample(AgrAgreementExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int deleteByExample(AgrAgreementExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int deleteByPrimaryKey(Long agreementId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int insert(AgrAgreement record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int insertSelective(AgrAgreement record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    List<AgrAgreement> selectByExample(AgrAgreementExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    AgrAgreement selectByPrimaryKey(Long agreementId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int updateByExampleSelective(@Param("record") AgrAgreement record, @Param("example") AgrAgreementExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int updateByExample(@Param("record") AgrAgreement record, @Param("example") AgrAgreementExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int updateByPrimaryKeySelective(AgrAgreement record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table agr_agreement
     *
     * @mbg.generated Sat May 18 13:03:42 CST 2019
     */
    int updateByPrimaryKey(AgrAgreement record);

    int updateStatusByBatchPrimaryKey(Map<String, Object> map);
}