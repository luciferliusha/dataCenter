package com.zjcds.common.service.impl;

import com.zjcds.common.dao.CommonDao;
import com.zjcds.common.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 2019/11/24
 * @Modified By:
 */
@Service
public class CommonServiceImpl implements CommonService {
    @Autowired
    private CommonDao commonDao;
    public List<Map<String, Object>> getItem(Map<String, Object> params) {
        return commonDao.getItem(params);
    }
}
