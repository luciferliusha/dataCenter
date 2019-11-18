package com.zjcds.dataResource.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 服务注册
 */

@Repository
public interface DataResourceDao {
    List<Map<String,Object>> getDataResourceList();
}