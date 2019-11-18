package com.zjcds.dataResource.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 资源数据信息
 */

@Repository
public interface DataResourceDao {
    /**
     * 查询资源数据信息列表
     * @return
     */
    List<Map<String,Object>> getDataResourceList();
}