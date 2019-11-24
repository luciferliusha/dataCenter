package com.zjcds.login.service.impl;

import com.zjcds.login.dao.LoginDao;
import com.zjcds.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 10:01 2019/9/24
 * @Modified By:
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao logoDao;
}

