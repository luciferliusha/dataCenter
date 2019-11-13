package com.zjcds.dataResource.pojo;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 22:47 2019/11/12
 * @Modified By:
 */
public class DataResourcePojo {
    private int id;                // 主键
    private String resourceType; // 数据资源类型
    private String resourceName; // 数据资源名称
    private String tableName1;    // 表名称
    private String description; // 描述
    private String updateCycle; // 更新周期
    private String remark;      // 备注

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getResourceType() {
        return resourceType;
    }

    public void setResourceType(String resourceType) {
        this.resourceType = resourceType;
    }

    public String getResourceName() {
        return resourceName;
    }

    public void setResourceName(String resourceName) {
        this.resourceName = resourceName;
    }

    public String getTableName() {
        return tableName1;
    }

    public void setTableName(String tableName) {
        this.tableName1 = tableName1;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUpdateCycle() {
        return updateCycle;
    }

    public void setUpdateCycle(String updateCycle) {
        this.updateCycle = updateCycle;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "DataResourcePojo{" +
                "id=" + id +
                ", resourceType='" + resourceType + '\'' +
                ", resourceName='" + resourceName + '\'' +
                ", tableName1='" + tableName1 + '\'' +
                ", description='" + description + '\'' +
                ", updateCycle='" + updateCycle + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
