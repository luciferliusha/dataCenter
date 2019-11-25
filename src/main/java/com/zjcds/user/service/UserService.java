package com.zjcds.user.service;

import com.zjcds.user.pojo.UserPojo;

import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 2019/11/24
 * @Modified By:
 */
public interface UserService {
    UserPojo getUserByUsername(Map<String,Object> param);
}
