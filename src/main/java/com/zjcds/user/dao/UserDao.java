package com.zjcds.user.dao;

import com.zjcds.user.pojo.UserPojo;

import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 2019/11/24
 * @Modified By:
 */
public interface UserDao {
    UserPojo getUserByUsername(Map<String, Object> param);
}
