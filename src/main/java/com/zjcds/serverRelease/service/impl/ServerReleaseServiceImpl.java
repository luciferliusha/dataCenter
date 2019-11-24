package com.zjcds.serverRelease.service.impl;

import com.zjcds.serverRelease.dao.ServerReleaseDao;
import com.zjcds.serverRelease.service.ServerReleaseService;
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
public class ServerReleaseServiceImpl implements ServerReleaseService {
    @Autowired
    private ServerReleaseDao serverReleaseDao;

    public List<Map<String, Object>> getServiceResourceList() {
        return serverReleaseDao.getServiceResourceList();
    }

    public int saveServiceResource(Map<String, Object> params) {
        return serverReleaseDao.saveServiceResource(params);
    }
}
