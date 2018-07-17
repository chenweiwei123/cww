package com.cww.controller;

import com.cww.pojo.Note;
import com.cww.pojo.Theme;
import com.cww.service.UrlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/url")
public class ExterController {
    @Autowired
    UrlService service;
    @RequestMapping("weather")
    public String getWeather(){
        return "weather1";
    }
    @RequestMapping("beiwang1")
    public String getThemes(HttpServletRequest request){
        List<Theme> themes= service.gettheme();
        HttpSession session=request.getSession();
        session.setAttribute("themes",themes);
        return "beiwang";
    }
    @RequestMapping("beiwang")
    public String insertInfo(Note note){
        try{
            service.insertnotes(note);
        }catch (Exception e){
           return "error";
        }
        return "beiwang2";
    }
    @RequestMapping("beiwang2")
    public String getInfo(Integer owner,HttpServletRequest request){
       List<Note> notes= service.getnotes(owner);
       HttpSession session=request.getSession();
       session.setAttribute("notes",notes);
       return "beiwang2";
    }
    /**
     * 公共页面跳转
     */
    @RequestMapping("/{page}")
    public String goPage(@PathVariable("page") String pageStr ){
        return pageStr;
    }

}
