package com.zjcds.serverRelease.service.impl;

import com.zjcds.serverRelease.dao.ServerReleaseDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 9:47 2019/9/24
 * @Modified By:
 */
@Service
public class ServerReleaseServiceImpl {

    @Autowired
    public ServerReleaseDao serverReleaseDao;
}
