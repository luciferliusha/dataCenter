package com.zjcds.index.controller;

import com.zjcds.index.service.IndexService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description: 首页
 * @Author: zhangxy
 * @Date: Created in 10:42 2019/10/9
 * @Modified By:
 */
@RestController
@RequestMapping("/index")
public class IndexController {
    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(IndexController.class);
    @Autowired
    private IndexService indexService;

    @RequestMapping("/index")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("flag", "1");
        log.info("返回首页面");
        return mv;
    }

}
