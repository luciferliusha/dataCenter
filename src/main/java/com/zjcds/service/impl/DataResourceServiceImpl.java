package com.zjcds.service.impl;

import com.zjcds.dao.DataResourceDao;
import com.zjcds.entity.DataResourceInfo;
import com.zjcds.service.DataResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * FileName: DataResourceService.java
 *
 * 进行数据资源相关的处理实现类
 *
 * @author  wwl
 * @Date    2019-09-01
 * @version 1.00
 */
@Service("DataResourceService")
public class DataResourceServiceImpl implements DataResourceService {

    @Autowired
    private DataResourceDao dataResourceDao;

    /**
     *
     * @description 根据条件查询数据资源相关信息
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return ModelAndView
     *
     */
    public List<DataResourceInfo> findDataResourceInfo(HashMap param) {
        return dataResourceDao.findDataResourceInfo(param);
    }



    /**
     *
     * @description 根据resourceId查找相应的具体数据
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return ModelAndView
     *
     */
    public List<HashMap> findData(HashMap param) {

        return dataResourceDao.findData(param);
    }

    /**
     *
     * @description 保存数据资源信息
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return 返回保存数据资源信息操作的状态
     *
     */
    public int saveDataResourceInfo(DataResourceInfo dataResourceInfo) {

        return dataResourceDao.saveDataResourceInfo(dataResourceInfo);
    }


}
