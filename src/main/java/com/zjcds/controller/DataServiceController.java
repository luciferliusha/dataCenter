package com.zjcds.controller;

import com.zjcds.entity.ServiceInfo;
import com.zjcds.service.DataResourceService;
import com.zjcds.service.DataServiceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * FileName: WebserviceController.java
 *
 * 处理前台请求的controller
 *
 * @author  wwl
 * @Date    2019-09-01
 * @version 1.00
 */
@Controller
public class DataServiceController {

    /** 获取日志记录器Logger，名字为本类类名 */
    private static Logger log = Logger.getLogger(DataServiceController.class);
    @Autowired
    private DataServiceService dataServiceService;


    /**
     *
     * 保存注册的服务相关信息
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return ModelAndView
     *
     */
   @RequestMapping("/dataservice/addDataServiceInfo")
   public ModelAndView addServiceInfo(ServiceInfo serviceinfo) {
       ModelAndView mv = new ModelAndView("/dataservice/addDataServiceInfo");
       mv.addObject("opInfo", dataServiceService.saveServiceInfo(serviceinfo));
       log.info("获取学生列表信息");
       return mv;
   }


}
