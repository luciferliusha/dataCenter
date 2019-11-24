package com.zjcds.dataResource.controller;

import com.zjcds.dataResource.service.DataResourceDetailService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * 资源详情信息
 */
@RestController
@RequestMapping("/dataResourceDetail")
public class DataResourceDetailController {

    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(DataResourceDetailController.class);

    @Autowired
    private DataResourceDetailService dataResourceDetailService;

    /**
     * 返回资源详情列表页面
     *
     * @return
     */
    @RequestMapping("/dataResourceDetail")
    public ModelAndView resourceInfo() {
        ModelAndView mv = new ModelAndView("dataResource/dataResourceDetail");
        mv.addObject("flag", "2");
        log.info("返回资源DataResourceDetailController详情列表页面");
        return mv;
    }

    /**
     * 数据资源详情页面
     *
     * @return
     */
    @RequestMapping(value = "/getDataResourceDetailById/{id}", method = RequestMethod.GET)
    public Map<String, Object> getDataResourceDetailById(@PathVariable int id) {
        Map<String, Object> result = dataResourceDetailService.getDataResourceDetailById(id);
        return result;
    }


}
