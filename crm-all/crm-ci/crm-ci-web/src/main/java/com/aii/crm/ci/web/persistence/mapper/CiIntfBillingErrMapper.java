package com.aii.crm.ci.web.persistence.mapper;

import com.aii.crm.ci.web.persistence.bo.CiIntfBillingErr;
import com.aii.crm.ci.web.persistence.bo.CiIntfBillingErrExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CiIntfBillingErrMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    long countByExample(CiIntfBillingErrExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int deleteByExample(CiIntfBillingErrExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int insert(CiIntfBillingErr record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int insertSelective(CiIntfBillingErr record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    List<CiIntfBillingErr> selectByExample(CiIntfBillingErrExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    CiIntfBillingErr selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int updateByExampleSelective(@Param("record") CiIntfBillingErr record, @Param("example") CiIntfBillingErrExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int updateByExample(@Param("record") CiIntfBillingErr record, @Param("example") CiIntfBillingErrExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int updateByPrimaryKeySelective(CiIntfBillingErr record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ci_intf_billing_err
     *
     * @mbg.generated Tue May 21 15:50:16 CST 2019
     */
    int updateByPrimaryKey(CiIntfBillingErr record);
}