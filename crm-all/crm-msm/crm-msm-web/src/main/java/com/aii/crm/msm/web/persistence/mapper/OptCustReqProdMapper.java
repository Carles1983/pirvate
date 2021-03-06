package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptCustReqProd;
import com.aii.crm.msm.web.persistence.bo.OptCustReqProdExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptCustReqProdMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    long countByExample(OptCustReqProdExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int deleteByExample(OptCustReqProdExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int deleteByPrimaryKey(Long custReqProdId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int insert(OptCustReqProd record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int insertSelective(OptCustReqProd record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    List<OptCustReqProd> selectByExample(OptCustReqProdExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    OptCustReqProd selectByPrimaryKey(Long custReqProdId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptCustReqProd record, @Param("example") OptCustReqProdExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int updateByExample(@Param("record") OptCustReqProd record, @Param("example") OptCustReqProdExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int updateByPrimaryKeySelective(OptCustReqProd record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_cust_req_prod
     *
     * @mbg.generated Wed May 29 10:26:05 CST 2019
     */
    int updateByPrimaryKey(OptCustReqProd record);
}