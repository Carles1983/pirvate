package com.aii.crm.cache.web.persistence.bo;

public class BsI18nResourceKey {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_i18n_resource.RES_KEY
     *
     * @mbg.generated Mon May 20 09:47:15 CST 2019
     */
    private String resKey;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_i18n_resource.LANGUAGES
     *
     * @mbg.generated Mon May 20 09:47:15 CST 2019
     */
    private String languages;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_i18n_resource.RES_KEY
     *
     * @return the value of bs_i18n_resource.RES_KEY
     *
     * @mbg.generated Mon May 20 09:47:15 CST 2019
     */
    public String getResKey() {
        return resKey;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_i18n_resource.RES_KEY
     *
     * @param resKey the value for bs_i18n_resource.RES_KEY
     *
     * @mbg.generated Mon May 20 09:47:15 CST 2019
     */
    public void setResKey(String resKey) {
        this.resKey = resKey == null ? null : resKey.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_i18n_resource.LANGUAGES
     *
     * @return the value of bs_i18n_resource.LANGUAGES
     *
     * @mbg.generated Mon May 20 09:47:15 CST 2019
     */
    public String getLanguages() {
        return languages;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_i18n_resource.LANGUAGES
     *
     * @param languages the value for bs_i18n_resource.LANGUAGES
     *
     * @mbg.generated Mon May 20 09:47:15 CST 2019
     */
    public void setLanguages(String languages) {
        this.languages = languages == null ? null : languages.trim();
    }
}