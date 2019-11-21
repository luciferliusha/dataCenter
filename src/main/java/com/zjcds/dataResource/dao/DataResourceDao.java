package com.zjcds.dataResource.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 数据资源信息
 */

@Repository
public interface DataResourceDao {
    /**
     * 查询数据资源信息列表
     * @return
     */
    List<Map<String,Object>> getDataResourceList();


    int saveDataResource(Map<String, Object> params);
}