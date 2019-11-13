package com.zjcds.index.service.impl;

import com.zjcds.index.pojo.IndexDao;
import com.zjcds.index.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 10:40 2019/10/9
 * @Modified By:
 */
public class IndexServiceImpl implements IndexService {

    @Autowired
    private IndexDao indexDao;
}
