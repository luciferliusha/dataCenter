package com.zjcds.common.dao;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 2019/11/24
 * @Modified By:
 */
public interface CommonDao {
    List<Map<String, Object>> getItem(Map<String, Object> params);
}
