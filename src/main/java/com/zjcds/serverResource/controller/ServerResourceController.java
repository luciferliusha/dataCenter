package com.zjcds.serverResource.controller;

import com.zjcds.serverResource.service.ServerResourceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
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
@RequestMapping("/serverResource")
public class ServerResourceController {

    //获取日志记录器Logger
    private static Logger log = Logger.getLogger(ServerResourceController.class);

    @Autowired
    private ServerResourceService serverResourceService;

    /*
     * 服务资源信息页面
     * */

    @RequestMapping("/serverResourceInfo")
    public ModelAndView serverRelease() {
        ModelAndView mv = new ModelAndView("serverResource/serverResourceInfo");
        log.info("返回服务资源信息页面");
        mv.addObject("flag", "3");
        return mv;
    }


    /**
     * 查询服务资源信息列表数据
     * @return
     */
    @RequestMapping(value = "/getServiceResourceList", method = RequestMethod.GET)
    public List<Map<String,Object>> getServiceResourceList(HttpServletRequest request,@RequestParam Map<String,Object> param) {
        // 查询服务资源信息列表数据
        List<Map<String,Object>> result = serverResourceService.getServiceResourceList(param);
        log.info("查询服务资源列表");
        return result;
    }

    /**
     * 返回服务注册列表页面
     * @return
     */
    @RequestMapping("/serverResourceRegister")
    public ModelAndView serverResourceRegister() {
        ModelAndView mv = new ModelAndView("serverResource/serverResourceRegister");
        mv.addObject("flag", "3");
        log.info("返回服务详情列表页面");
        return mv;
    }

    /**
     *  注册服务资源信息
     * @param request
     * @param params
     * @return
     */
    @RequestMapping(value = "saveServiceResource", method = RequestMethod.POST)
    public Map<String, String> saveServiceResource(HttpServletRequest request, @RequestParam Map<String,Object> params) {
        int count = serverResourceService.saveServiceResource(params);
        Map<String, String> result = new HashMap<String, String>();
        if (count > 0) {
            result.put("message", "success");
        } else {
            result.put("message", "fail");
        }
        return result;
    }

    /**
     * 返回服务资源详情页面
     * @return
     */
    @RequestMapping("/serverResourceDetail")
    public ModelAndView serverResourceDetail() {
        ModelAndView mv = new ModelAndView("serverResource/serverResourceDetail");
        mv.addObject("flag", "3");
        log.info("返回服务资源详情页面");
        return mv;
    }

    /**
     * 查询服务资源详情数据
     * @param id
     * @return
     */
    @RequestMapping("/getServerResourceById/{id}")
    public Map<String,Object> getServerResourceById(@PathVariable String id) {
        return serverResourceService.getServerResourceById(id);
    }

    /**
     * 查询数据项信息
     * @return
     */
    @RequestMapping("/getDataItem")
    public List<Map<String,Object>> getDataItem() {
        return serverResourceService.getDataItem();
    }
}
