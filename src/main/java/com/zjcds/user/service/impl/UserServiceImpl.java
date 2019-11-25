package com.zjcds.user.service.impl;

import com.zjcds.user.dao.UserDao;
import com.zjcds.user.pojo.UserPojo;
import com.zjcds.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 2019/11/24
 * @Modified By:
 */

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    public UserPojo getUserByUsername(Map<String, Object> param) {
        return userDao.getUserByUsername(param);
    }
}
