package com.zjcds.serverResource.service.impl;

import com.zjcds.serverResource.dao.ServerResourceDao;
import com.zjcds.serverResource.service.ServerResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 9:47 2019/9/24
 * @Modified By:
 */
@Service("ServerReleaseService")
public class ServerResourceServiceImpl implements ServerResourceService {
    @Autowired
    private ServerResourceDao serverResourceDao;

    public int saveServiceResource(Map<String, Object> params) {
        return serverResourceDao.saveServiceResource(params);
    }

    public Map<String, Object> getServerResourceById(String id) {
        return serverResourceDao.getServerResourceById(id);
    }

    public List<Map<String, Object>> getDataItem() {
        return serverResourceDao.getDataItem();
    }

    public List<Map<String, Object>> getServiceResourceList(Map<String, Object> param) {
        return serverResourceDao.getServiceResourceList(param);
    }

}
