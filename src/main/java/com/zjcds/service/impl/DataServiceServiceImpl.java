package com.zjcds.service.impl;

import com.zjcds.dao.DataServiceDao;
import com.zjcds.entity.ServiceInfo;
import com.zjcds.service.DataServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service("DataServiceService")
public class DataServiceServiceImpl implements DataServiceService {

    @Autowired
    private DataServiceDao dataServiceDao;

    /**
     *
     * @description 保存服务相关信息
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return 返回保存服务信息操作的状态
     *
     */
    public int saveServiceInfo(ServiceInfo serviceInfo) {

        return dataServiceDao.saveServiceInfo(serviceInfo);
    }

    /**
     *
     * @description 根据条件查找数据服务相关信息
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return ModelAndView
     *
     */
    public List<ServiceInfo> findServiceInfo(HashMap param) {

        return dataServiceDao.findServiceInfo(param);
    }
}
