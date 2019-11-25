package com.zjcds.common.controller;

import com.zjcds.common.service.CommonService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 数据资源信息
 */
@RestController
@RequestMapping("/common")
public class CommonController {

    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(CommonController.class);

    @Autowired
    private CommonService commonService;

    @RequestMapping("/getItem")
    public List<Map<String, Object>> getItem(@RequestParam Map<String, Object> params) {
        return commonService.getItem(params);
    }


}
