package com.aii.crm.msm.web.persistence.mapper;

import com.aii.crm.msm.web.persistence.bo.OptPreProposeOffer;
import com.aii.crm.msm.web.persistence.bo.OptPreProposeOfferExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OptPreProposeOfferMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    long countByExample(OptPreProposeOfferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int deleteByExample(OptPreProposeOfferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int deleteByPrimaryKey(Long preOfferId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int insert(OptPreProposeOffer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int insertSelective(OptPreProposeOffer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    List<OptPreProposeOffer> selectByExample(OptPreProposeOfferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    OptPreProposeOffer selectByPrimaryKey(Long preOfferId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int updateByExampleSelective(@Param("record") OptPreProposeOffer record, @Param("example") OptPreProposeOfferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int updateByExample(@Param("record") OptPreProposeOffer record, @Param("example") OptPreProposeOfferExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int updateByPrimaryKeySelective(OptPreProposeOffer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table opt_pre_propose_offer
     *
     * @mbg.generated Wed May 29 10:29:42 CST 2019
     */
    int updateByPrimaryKey(OptPreProposeOffer record);
}