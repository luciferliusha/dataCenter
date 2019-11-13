package com.zjcds.controller;

import com.zjcds.service.DataResourceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

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
public class DataResourceController {

    /** 获取日志记录器Logger，名字为本类类名 */
    private static Logger log = Logger.getLogger(DataResourceController.class);
    @Autowired
    private DataResourceService dataresourceService;

    /**
     *
     * @description 根据条件查找相应的数据
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return 返回结果的说明
     *
     */
    @RequestMapping("/dataresource/getData")
    public ModelAndView findDataByParam(HashMap param) {
        ModelAndView mv = new ModelAndView("/dataresource/getData");
        mv.addObject("dataList", dataresourceService.findData(param));
        log.info("获取学生列表信息");
        return mv;
    }

    /**
     *
     * @description 根据条件查找相应的数据资源相关信息
     *
     * @Param:
     * @author: wwl
     * @createDate: 2019-09-19
     * @updateDate: 2019-09-19
     * @return ModelAndView
     *
     */
    @RequestMapping("/dataresource/GetdataResourceInfo")
    public ModelAndView findDataResourceInfoByParam(HashMap param) {
        ModelAndView mv = new ModelAndView("/dataresource/GetdataResourceInfo");
        mv.addObject("studentList", dataresourceService.findDataResourceInfo(param));
        log.info("获取学生列表信息");
        return mv;
    }


}
