package com.cww.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.net.www.http.HttpClient;

@Controller
@RequestMapping("/url")
public class ExterController {
    @RequestMapping("weather")
    public String getWeather(){
        return "weather1";
    }
    /**
     * 公共页面跳转
     */
    @RequestMapping("/{page}")
    public String goPage(@PathVariable("page") String pageStr ){
        return pageStr;
    }

}
