package com.zjcds.serverRelease.controller;

import com.zjcds.serverRelease.service.ServerReleaseService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description:
 * @Author: zhangxy
 * @Date: Created in 9:49 2019/9/24
 * @Modified By:
 */
@RestController
@RequestMapping("/serverRelease")
public class ServerReleaseController {
    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(ServerReleaseController.class);
    @Autowired
    private ServerReleaseService serverReleaseService;

    /*
     * 服务发布信息页面
     * */

    @RequestMapping("/serverReleaseInfo")
    public ModelAndView serverRelease() {
        ModelAndView mv = new ModelAndView("serverReleaseInfo/serverReleaseInfo");
        log.info("返回服务发布信息页面");
        mv.addObject("flag", "3");
        return mv;
    }
}
