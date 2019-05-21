package com.aii.crm.ci.web.persistence.bo;

import java.util.Date;

public class CiAttach {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.ATTACH_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private Long attachId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.BUSI_SHEET_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String busiSheetId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.ATTACH_TYPE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String attachType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.FILE_NAME
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String fileName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.STORAGE_FILE_URI
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String storageFileUri;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.OP_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private Long opId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.ORG_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private Long orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.DONE_DATE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private Date doneDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.CREATE_DATE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.DONE_CODE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String doneCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.ATTACH_STATUS
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String attachStatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.REMARKS
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String remarks;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ci_attach.BUSI_TYPE_CODE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    private String busiTypeCode;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.ATTACH_ID
     *
     * @return the value of ci_attach.ATTACH_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public Long getAttachId() {
        return attachId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.ATTACH_ID
     *
     * @param attachId the value for ci_attach.ATTACH_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setAttachId(Long attachId) {
        this.attachId = attachId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.BUSI_SHEET_ID
     *
     * @return the value of ci_attach.BUSI_SHEET_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getBusiSheetId() {
        return busiSheetId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.BUSI_SHEET_ID
     *
     * @param busiSheetId the value for ci_attach.BUSI_SHEET_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setBusiSheetId(String busiSheetId) {
        this.busiSheetId = busiSheetId == null ? null : busiSheetId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.ATTACH_TYPE
     *
     * @return the value of ci_attach.ATTACH_TYPE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getAttachType() {
        return attachType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.ATTACH_TYPE
     *
     * @param attachType the value for ci_attach.ATTACH_TYPE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setAttachType(String attachType) {
        this.attachType = attachType == null ? null : attachType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.FILE_NAME
     *
     * @return the value of ci_attach.FILE_NAME
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.FILE_NAME
     *
     * @param fileName the value for ci_attach.FILE_NAME
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setFileName(String fileName) {
        this.fileName = fileName == null ? null : fileName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.STORAGE_FILE_URI
     *
     * @return the value of ci_attach.STORAGE_FILE_URI
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getStorageFileUri() {
        return storageFileUri;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.STORAGE_FILE_URI
     *
     * @param storageFileUri the value for ci_attach.STORAGE_FILE_URI
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setStorageFileUri(String storageFileUri) {
        this.storageFileUri = storageFileUri == null ? null : storageFileUri.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.OP_ID
     *
     * @return the value of ci_attach.OP_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public Long getOpId() {
        return opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.OP_ID
     *
     * @param opId the value for ci_attach.OP_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setOpId(Long opId) {
        this.opId = opId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.ORG_ID
     *
     * @return the value of ci_attach.ORG_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public Long getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.ORG_ID
     *
     * @param orgId the value for ci_attach.ORG_ID
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.DONE_DATE
     *
     * @return the value of ci_attach.DONE_DATE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public Date getDoneDate() {
        return doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.DONE_DATE
     *
     * @param doneDate the value for ci_attach.DONE_DATE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setDoneDate(Date doneDate) {
        this.doneDate = doneDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.CREATE_DATE
     *
     * @return the value of ci_attach.CREATE_DATE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.CREATE_DATE
     *
     * @param createDate the value for ci_attach.CREATE_DATE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.DONE_CODE
     *
     * @return the value of ci_attach.DONE_CODE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getDoneCode() {
        return doneCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.DONE_CODE
     *
     * @param doneCode the value for ci_attach.DONE_CODE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setDoneCode(String doneCode) {
        this.doneCode = doneCode == null ? null : doneCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.ATTACH_STATUS
     *
     * @return the value of ci_attach.ATTACH_STATUS
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getAttachStatus() {
        return attachStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.ATTACH_STATUS
     *
     * @param attachStatus the value for ci_attach.ATTACH_STATUS
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setAttachStatus(String attachStatus) {
        this.attachStatus = attachStatus == null ? null : attachStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.REMARKS
     *
     * @return the value of ci_attach.REMARKS
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.REMARKS
     *
     * @param remarks the value for ci_attach.REMARKS
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ci_attach.BUSI_TYPE_CODE
     *
     * @return the value of ci_attach.BUSI_TYPE_CODE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public String getBusiTypeCode() {
        return busiTypeCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ci_attach.BUSI_TYPE_CODE
     *
     * @param busiTypeCode the value for ci_attach.BUSI_TYPE_CODE
     *
     * @mbg.generated Tue May 21 15:45:13 CST 2019
     */
    public void setBusiTypeCode(String busiTypeCode) {
        this.busiTypeCode = busiTypeCode == null ? null : busiTypeCode.trim();
    }
}