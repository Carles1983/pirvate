package com.aii.crm.cache.web.persistence.mapper;

import com.aii.crm.cache.web.persistence.bo.BsParaDetail;
import com.aii.crm.cache.web.persistence.bo.BsParaDetailExample;
import com.aii.crm.cache.web.persistence.bo.BsParaDetailKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BsParaDetailMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    long countByExample(BsParaDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int deleteByExample(BsParaDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int deleteByPrimaryKey(BsParaDetailKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int insert(BsParaDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int insertSelective(BsParaDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    List<BsParaDetail> selectByExample(BsParaDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    BsParaDetail selectByPrimaryKey(BsParaDetailKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int updateByExampleSelective(@Param("record") BsParaDetail record, @Param("example") BsParaDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int updateByExample(@Param("record") BsParaDetail record, @Param("example") BsParaDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int updateByPrimaryKeySelective(BsParaDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_para_detail
     *
     * @mbg.generated Mon May 20 17:23:42 CST 2019
     */
    int updateByPrimaryKey(BsParaDetail record);
}