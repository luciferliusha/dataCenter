package com.zjcds.serverRelease.controller;

import com.zjcds.serverRelease.service.ServerReleaseService;
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


    /**
     * 查询数据资源信息列表数据
     * @return
     */
    @RequestMapping(value = "/getServiceResourceList", method = RequestMethod.GET)
    public List<Map<String,Object>> getServiceResourceList(HttpServletRequest request,@RequestParam Map<String,Object> param) {
        // 查询数据资源信息列表数据
        List<Map<String,Object>> result = serverReleaseService.getServiceResourceList(param);
        log.info("查询数据资源列表");
        return result;
    }

    /**
     *  注册服务资源信息
     * @param request
     * @param params
     * @return
     */
    @RequestMapping(value = "saveServiceResource", method = RequestMethod.POST)
    public Map<String, String> saveServiceResource(HttpServletRequest request, @RequestParam Map<String,Object> params) {
        int count = serverReleaseService.saveServiceResource(params);
        Map<String, String> result = new HashMap<String, String>();
        if (count > 0) {
            result.put("message", "success");
        } else {
            result.put("message", "fail");
        }
        return result;
    }
}
