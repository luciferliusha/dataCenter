package com.zjcds.serverRelease.service;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 9:46 2019/9/24
 * @Modified By:
 */
public interface ServerReleaseService {
     List<Map<String,Object>> getServiceResourceList();

    int saveServiceResource(Map<String, Object> params);
}
