package com.aii.crm.cm.web.persistence.mapper;

import com.aii.crm.cm.web.persistence.bo.CmBillingAcctH;
import com.aii.crm.cm.web.persistence.bo.CmBillingAcctHExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmBillingAcctHMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    long countByExample(CmBillingAcctHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int deleteByExample(CmBillingAcctHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int deleteByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int insert(CmBillingAcctH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int insertSelective(CmBillingAcctH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    List<CmBillingAcctH> selectByExample(CmBillingAcctHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    CmBillingAcctH selectByPrimaryKey(Long hId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int updateByExampleSelective(@Param("record") CmBillingAcctH record, @Param("example") CmBillingAcctHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int updateByExample(@Param("record") CmBillingAcctH record, @Param("example") CmBillingAcctHExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int updateByPrimaryKeySelective(CmBillingAcctH record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cm_billing_acct_h
     *
     * @mbg.generated Tue May 28 20:06:36 CST 2019
     */
    int updateByPrimaryKey(CmBillingAcctH record);
}