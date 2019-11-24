package com.zjcds.dataResource.controller;

import com.zjcds.dataResource.service.DataResourceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 数据资源信息
 */
@RestController
@RequestMapping("/dataResource")
public class DataResourceController {

    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(DataResourceController.class);

    @Autowired
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
    @RequestMapping(value = "/getDataResourceList", method = RequestMethod.GET)
    public List<Map<String, Object>> getDataResourceList(HttpServletRequest request,@RequestParam Map<String,Object> param) {
        // 查询数据资源信息列表数据
        List<Map<String, Object>> result = dataResourceService.getDataResourceList(param);
        log.info("查询数据资源列表");
        return result;
    }


    /**
     * 返回服务资源信息注册页面
     *
     * @return
     */
    @RequestMapping("/resourceRegister")
    public ModelAndView resourceRegister() {
        ModelAndView mv = new ModelAndView("dataResource/resourceRegister");
        log.info("返回服务资源信息注册页面");
        mv.addObject("flag", "2");
        return mv;
    }

    /**
     * 注册数据资源信息
     *
     * @param request
     * @param params
     * @return
     */
    @RequestMapping(value = "saveDataResource", method = RequestMethod.POST)
    public Map<String, String> saveDataResource(HttpServletRequest request, @RequestParam Map<String, Object> params) {
        int count = dataResourceService.saveDataResource(params);
        Map<String, String> result = new HashMap<String, String>();
        if (count > 0) {
            result.put("message", "success");
        } else {
            result.put("message", "fail");
        }
        return result;
    }
}
