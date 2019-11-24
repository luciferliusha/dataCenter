package com.zjcds.dataResource.service;

import java.util.List;
import java.util.Map;

/**
 * 数据资源信息
 */
public interface DataResourceService {
    /**
     * 查询数据资源信息列表
     * @return
     */
    List<Map<String,Object>> getDataResourceList(Map<String,Object> param);

    int saveDataResource(Map<String, Object> params);

}
