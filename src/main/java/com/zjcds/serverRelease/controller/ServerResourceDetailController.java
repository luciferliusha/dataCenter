package com.zjcds.serverRelease.controller;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 服务详情信息
 */
@RestController
@RequestMapping("/serverResourceDetail")
public class ServerResourceDetailController {

    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(ServerResourceDetailController.class);

    /**
     * 返回服务详情列表页面
     * @return
     */
    @RequestMapping("/serverResourceDetail")
    public ModelAndView resourceInfo() {
        ModelAndView mv = new ModelAndView("serverReleaseInfo/serverResourceDetail");
        mv.addObject("flag", "3");
        log.info("返回服务详情列表页面");
        return mv;
    }


}
