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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/url")
public class ExterController {
    @Autowired
    UrlService service;
    @RequestMapping("weather")
    public String getWeather(){
        return "now/weather1";
    }
    @RequestMapping("beiwang1")
    public String getThemes(HttpServletRequest request){
        List<Theme> themes= service.gettheme();
        HttpSession session=request.getSession();
        session.setAttribute("themes",themes);
        return "now/beiwang";
    }
    @RequestMapping("info")
    public String getinfo(Integer id,HttpServletRequest request){
        Note note=service.getnotesByid(id);
        request.setAttribute("note",note);
        return "beiwang3";
    }
    @RequestMapping("bei")
    public String insertInfo(Note note,String dat,HttpServletRequest request){
        try{
            //dat  String-->Date
            SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd HH:mm" );
            Date date=sdf.parse(dat);
            note.setDate(date);
            service.insertnotes(note);
            request.setAttribute("note",note);
        }catch (Exception e){
           return "now/error";
        }
        return "beiwang3"; //beiwang3是显示单个信息
    }
    @RequestMapping("beiinfo")
    public String getInfo(Integer owner,HttpServletRequest request){
       List<Note> notes= service.getnotes(owner);
       HttpSession session=request.getSession();
       session.setAttribute("notes",notes);
       return "beiwang2";//显示所有的信息
    }
    /**
     * 公共页面跳转
     */
    @RequestMapping("/{page}")
    public String goPage(@PathVariable("page") String pageStr ){
        return pageStr;
    }

}
