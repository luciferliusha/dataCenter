package com.zjcds.dataResource.controller;

import com.zjcds.dataResource.service.DataResourceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * 源信息
 */
@RestController
@RequestMapping("/dataResource")
public class DataResourceController {

    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(DataResourceController.class);
    @Autowired(required = true)
    private DataResourceService dataResourceService;

    /**
     * 返回数据资源信息列表页面
     *
     * @return
     */
    @RequestMapping("/resourceInfo")
    public ModelAndView resourceInfo() {
        ModelAndView mv = new ModelAndView("dataResource/resourceInfo");
        mv.addObject("flag", "2");
        log.info("返回数据资源信息列表页面");
        return mv;
    }

    /**
     * 查询数据资源列表
     *
     * @return
     */
    @RequestMapping(value = "/getDataResourceList")
    public List<Map<String,Object>> getDataResourceList() {
        List<Map<String,Object>> result = dataResourceService.getDataResourceList();
        log.info("查询数据资源列表");
        return result;
    }

    /**
     * 返回服务注册系统新增页面
     *
     * @return
     */
    @RequestMapping("/addSystemInfo")
    public ModelAndView addSystemInfo() {
        ModelAndView mv = new ModelAndView("dataResource/addSystemInfo");
        log.info("返回资源注册系统新增页面");
        return mv;

    }

}
