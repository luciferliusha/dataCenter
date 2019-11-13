package com.zjcds.dataResource.controller;

import com.zjcds.dataResource.service.ServerRegisterService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 服务注册
 */
@RestController
@RequestMapping("/serverRegister")
public class ServerRegisterController {
    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(ServerRegisterController.class);
    @Autowired
    private ServerRegisterService serverRegisterService;

    /**
     * 返回服务资源信息注册页面
     * @return
     */
    @RequestMapping("/serverRegister")
    public ModelAndView serverRegister() {
        ModelAndView mv = new ModelAndView("dataResource/serverRegister");
        log.info("返回服务资源信息注册页面");
        mv.addObject("flag", "2");
        return mv;
    }
}
