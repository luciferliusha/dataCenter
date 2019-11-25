package com.zjcds.serverResource.pojo;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 10:13 2019/11/19
 * @Modified By:
 */
public class ServerResourcePojo {
    private int id;
    private String serviceType;
    private String serviceNmae;
    private String serviceDesc;
    private String dbIp;
    private String dbPort;
    private String dbName;
    private String dbTableName;
    private String dbUsername;
    private String dbPassword;
    private String wsdlIp;
    private String wsdlPort;
    private String wsdlUrl;
    private String restfulMethod;
    private String restfulIp;
    private String restfulPort;
    private String restfulUrl;
    private String restfulParam;
    private String ftpIp;
    private String ftpPort;
    private String ftpUsername;
    private String ftpPassword;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public String getServiceNmae() {
        return serviceNmae;
    }

    public void setServiceNmae(String serviceNmae) {
        this.serviceNmae = serviceNmae;
    }

    public String getServiceDesc() {
        return serviceDesc;
    }

    public void setServiceDesc(String serviceDesc) {
        this.serviceDesc = serviceDesc;
    }

    public String getDbIp() {
        return dbIp;
    }

    public void setDbIp(String dbIp) {
        this.dbIp = dbIp;
    }

    public String getDbPort() {
        return dbPort;
    }

    public void setDbPort(String dbPort) {
        this.dbPort = dbPort;
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public String getDbTableName() {
        return dbTableName;
    }

    public void setDbTableName(String dbTableName) {
        this.dbTableName = dbTableName;
    }

    public String getDbUsername() {
        return dbUsername;
    }

    public void setDbUsername(String dbUsername) {
        this.dbUsername = dbUsername;
    }

    public String getDbPassword() {
        return dbPassword;
    }

    public void setDbPassword(String dbPassword) {
        this.dbPassword = dbPassword;
    }

    public String getWsdlIp() {
        return wsdlIp;
    }

    public void setWsdlIp(String wsdlIp) {
        this.wsdlIp = wsdlIp;
    }

    public String getWsdlPort() {
        return wsdlPort;
    }

    public void setWsdlPort(String wsdlPort) {
        this.wsdlPort = wsdlPort;
    }

    public String getWsdlUrl() {
        return wsdlUrl;
    }

    public void setWsdlUrl(String wsdlUrl) {
        this.wsdlUrl = wsdlUrl;
    }

    public String getRestfulMethod() {
        return restfulMethod;
    }

    public void setRestfulMethod(String restfulMethod) {
        this.restfulMethod = restfulMethod;
    }

    public String getRestfulIp() {
        return restfulIp;
    }

    public void setRestfulIp(String restfulIp) {
        this.restfulIp = restfulIp;
    }

    public String getRestfulPort() {
        return restfulPort;
    }

    public void setRestfulPort(String restfulPort) {
        this.restfulPort = restfulPort;
    }

    public String getRestfulUrl() {
        return restfulUrl;
    }

    public void setRestfulUrl(String restfulUrl) {
        this.restfulUrl = restfulUrl;
    }

    public String getRestfulParam() {
        return restfulParam;
    }

    public void setRestfulParam(String restfulParam) {
        this.restfulParam = restfulParam;
    }

    public String getFtpIp() {
        return ftpIp;
    }

    public void setFtpIp(String ftpIp) {
        this.ftpIp = ftpIp;
    }

    public String getFtpPort() {
        return ftpPort;
    }

    public void setFtpPort(String ftpPort) {
        this.ftpPort = ftpPort;
    }

    public String getFtpUsername() {
        return ftpUsername;
    }

    public void setFtpUsername(String ftpUsername) {
        this.ftpUsername = ftpUsername;
    }

    public String getFtpPassword() {
        return ftpPassword;
    }

    public void setFtpPassword(String ftpPassword) {
        this.ftpPassword = ftpPassword;
    }

    @Override
    public String toString() {
        return "ServerReleasePojo{" +
                "id=" + id +
                ", serviceType='" + serviceType + '\'' +
                ", serviceNmae='" + serviceNmae + '\'' +
                ", serviceDesc='" + serviceDesc + '\'' +
                ", dbIp='" + dbIp + '\'' +
                ", dbPort='" + dbPort + '\'' +
                ", dbName='" + dbName + '\'' +
                ", dbTableName='" + dbTableName + '\'' +
                ", dbUsername='" + dbUsername + '\'' +
                ", dbPassword='" + dbPassword + '\'' +
                ", wsdlIp='" + wsdlIp + '\'' +
                ", wsdlPort='" + wsdlPort + '\'' +
                ", wsdlUrl='" + wsdlUrl + '\'' +
                ", restfulMethod='" + restfulMethod + '\'' +
                ", restfulIp='" + restfulIp + '\'' +
                ", restfulPort='" + restfulPort + '\'' +
                ", restfulUrl='" + restfulUrl + '\'' +
                ", restfulParam='" + restfulParam + '\'' +
                ", ftpIp='" + ftpIp + '\'' +
                ", ftpPort='" + ftpPort + '\'' +
                ", ftpUsername='" + ftpUsername + '\'' +
                ", ftpPassword='" + ftpPassword + '\'' +
                '}';
    }
}
