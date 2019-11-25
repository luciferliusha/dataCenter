package com.zjcds.login.controller;

import com.zjcds.login.service.LoginService;
import com.zjcds.user.pojo.UserPojo;
import com.zjcds.user.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

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

    @Autowired
    private UserService userService;

    /**
     * 返回登录页面
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView mv = new ModelAndView("login/login");
        log.info("返回登录页面");
        return mv;
    }

    /**
     * 登录方法
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView doLogin(@RequestParam Map<String,Object> params) {
        // 根据用户名查询用户
        UserPojo userPojo = userService.getUserByUsername(params);
        ModelAndView mv;
        if (userPojo != null && params.get("password").equals(userPojo.getPassword())) {
            mv = new ModelAndView("redirect:/index/index");
        } else {
            mv = new ModelAndView("/login/login");
            mv.addObject("message","用户名或密码错误！");
        }
        return mv;
    }

    /**
     * 退出方法
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public ModelAndView logout(@RequestParam Map<String,Object> params) {
        ModelAndView mv = new ModelAndView("redirect:/login/login");
        return mv;
    }
}
