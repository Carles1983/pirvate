package com.aii.crm.cm.web.persistence.bo;

public class CmPartyRoleKey {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_role.PARTY_ROLE_ID
     *
     * @mbg.generated Tue May 28 20:32:48 CST 2019
     */
    private Long partyRoleId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cm_party_role.ROLE_TYPE
     *
     * @mbg.generated Tue May 28 20:32:48 CST 2019
     */
    private Long roleType;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_role.PARTY_ROLE_ID
     *
     * @return the value of cm_party_role.PARTY_ROLE_ID
     *
     * @mbg.generated Tue May 28 20:32:48 CST 2019
     */
    public Long getPartyRoleId() {
        return partyRoleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_role.PARTY_ROLE_ID
     *
     * @param partyRoleId the value for cm_party_role.PARTY_ROLE_ID
     *
     * @mbg.generated Tue May 28 20:32:48 CST 2019
     */
    public void setPartyRoleId(Long partyRoleId) {
        this.partyRoleId = partyRoleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cm_party_role.ROLE_TYPE
     *
     * @return the value of cm_party_role.ROLE_TYPE
     *
     * @mbg.generated Tue May 28 20:32:48 CST 2019
     */
    public Long getRoleType() {
        return roleType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cm_party_role.ROLE_TYPE
     *
     * @param roleType the value for cm_party_role.ROLE_TYPE
     *
     * @mbg.generated Tue May 28 20:32:48 CST 2019
     */
    public void setRoleType(Long roleType) {
        this.roleType = roleType;
    }
}