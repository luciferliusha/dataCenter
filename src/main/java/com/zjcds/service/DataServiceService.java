package com.zjcds.service;

import com.zjcds.entity.DataResourceInfo;
import com.zjcds.entity.ServiceInfo;

import java.util.HashMap;
import java.util.List;

/**
 * FileName: DataResourceService.java
 *
 * 进行数据资源相关的处理接口类
 *
 * @author  wwl
 * @Date    2019-09-01
 * @version 1.00
 */
public interface DataServiceService {

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
    public List<ServiceInfo> findServiceInfo(HashMap param);


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
    public int saveServiceInfo(ServiceInfo serviceInfo);
}
