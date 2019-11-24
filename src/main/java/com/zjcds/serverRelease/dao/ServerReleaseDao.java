package com.zjcds.serverRelease.dao;

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
public interface ServerReleaseDao {

    List<Map<String, Object>> getServiceResourceList(Map<String, Object> param);

    int saveServiceResource(Map<String, Object> params);

}
