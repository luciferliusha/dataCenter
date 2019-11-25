package com.zjcds.serverResource.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 9:56 2019/11/19
 * @Modified By:
 */
@Repository
public interface ServerResourceDao {

    List<Map<String, Object>> getServiceResourceList(Map<String, Object> param);

    int saveServiceResource(Map<String, Object> params);

    Map<String, Object> getServerResourceById(String id);

    List<Map<String, Object>> getDataItem();
}
