package com.zjcds.dataResource.dao;

import com.zjcds.dataResource.pojo.DataResourcePojo;

import java.util.List;

/**
 * 服务注册
 */
public interface DataResourceDao {

    List<DataResourcePojo> getDataResourceList();
}
