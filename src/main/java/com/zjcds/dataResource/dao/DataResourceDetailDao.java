package com.zjcds.dataResource.dao;

import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * 资源详情
 */
@Repository
public interface DataResourceDetailDao {
    Map<String,Object> getDataResourceDetailById(int id);
}
