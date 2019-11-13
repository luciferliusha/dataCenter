package com.zjcds.login.controller;

import com.zjcds.login.service.LoginService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description: 登录页面
 * @Author: zhangxy
 * @Date: Created in 10:27 2019/10/10
 * @Modified By:
 */
@RestController
@RequestMapping("/login")
public class LoginController {
    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(LoginController.class);
    @Autowired
    private LoginService loginService;

    @RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView mv = new ModelAndView("login/login");
        log.info("返回登录页面");
        return mv;
    }
}
