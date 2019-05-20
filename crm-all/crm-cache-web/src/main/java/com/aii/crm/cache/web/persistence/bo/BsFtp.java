package com.aii.crm.cache.web.persistence.bo;

import java.util.Date;

public class BsFtp {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.FTP_CODE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private String ftpCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.HOST_IP
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private String hostIp;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.PORT
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private Integer port;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.USERNAME
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private String username;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.PASSWORD
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private String password;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.REMARKS
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private String remarks;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.STATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private String state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.STATE_DATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private Date stateDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.CREATED_DATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private Date createdDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_ftp.SECURE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    private String secure;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.FTP_CODE
     *
     * @return the value of bs_ftp.FTP_CODE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public String getFtpCode() {
        return ftpCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.FTP_CODE
     *
     * @param ftpCode the value for bs_ftp.FTP_CODE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setFtpCode(String ftpCode) {
        this.ftpCode = ftpCode == null ? null : ftpCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.HOST_IP
     *
     * @return the value of bs_ftp.HOST_IP
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public String getHostIp() {
        return hostIp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.HOST_IP
     *
     * @param hostIp the value for bs_ftp.HOST_IP
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setHostIp(String hostIp) {
        this.hostIp = hostIp == null ? null : hostIp.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.PORT
     *
     * @return the value of bs_ftp.PORT
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public Integer getPort() {
        return port;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.PORT
     *
     * @param port the value for bs_ftp.PORT
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setPort(Integer port) {
        this.port = port;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.USERNAME
     *
     * @return the value of bs_ftp.USERNAME
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.USERNAME
     *
     * @param username the value for bs_ftp.USERNAME
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.PASSWORD
     *
     * @return the value of bs_ftp.PASSWORD
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.PASSWORD
     *
     * @param password the value for bs_ftp.PASSWORD
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.REMARKS
     *
     * @return the value of bs_ftp.REMARKS
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.REMARKS
     *
     * @param remarks the value for bs_ftp.REMARKS
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.STATE
     *
     * @return the value of bs_ftp.STATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.STATE
     *
     * @param state the value for bs_ftp.STATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.STATE_DATE
     *
     * @return the value of bs_ftp.STATE_DATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public Date getStateDate() {
        return stateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.STATE_DATE
     *
     * @param stateDate the value for bs_ftp.STATE_DATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setStateDate(Date stateDate) {
        this.stateDate = stateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.CREATED_DATE
     *
     * @return the value of bs_ftp.CREATED_DATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public Date getCreatedDate() {
        return createdDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.CREATED_DATE
     *
     * @param createdDate the value for bs_ftp.CREATED_DATE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_ftp.SECURE
     *
     * @return the value of bs_ftp.SECURE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public String getSecure() {
        return secure;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_ftp.SECURE
     *
     * @param secure the value for bs_ftp.SECURE
     *
     * @mbg.generated Mon May 20 09:46:08 CST 2019
     */
    public void setSecure(String secure) {
        this.secure = secure == null ? null : secure.trim();
    }
}