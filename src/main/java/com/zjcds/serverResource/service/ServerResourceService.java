package com.zjcds.serverResource.service;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 9:46 2019/9/24
 * @Modified By:
 */
public interface ServerResourceService {
    List<Map<String, Object>> getServiceResourceList(Map<String, Object> param);

    int saveServiceResource(Map<String, Object> params);


    /**
     * 查询服务资源详情数据
     * @param id
     * @return
     */
    Map<String, Object> getServerResourceById(String id);

    List<Map<String, Object>> getDataItem();
}
