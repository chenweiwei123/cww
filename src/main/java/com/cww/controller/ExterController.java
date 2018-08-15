package com.cww.controller;

import com.cww.pojo.Note;
import com.cww.pojo.Theme;
import com.cww.service.UrlService;
import com.cww.utils.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletContext;
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
        session.setAttribute("Stheme",themes);
        return "beiwang";
    }
    @RequestMapping("info")
    public String getinfo(Integer id,HttpServletRequest request){
        Note note=service.getnotesByid(id);
        request.setAttribute("note",note);
        return "beiwang3";
    }
    @RequestMapping("beiwang2")
    public String getinfos(Integer id,HttpServletRequest request){
        List<Note> note=service.getnotes(id);
        request.setAttribute("notes",note);
        return "beiwang2";
    }
    @RequestMapping("bei")
    public String insertInfo(Note note,String dat,HttpServletRequest request){
        try{
            //dat  String-->Date
            SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd" );
            Date date=sdf.parse(dat);
            note.setDate(date);
            service.insertnotes(note);
            List<Note> notes = service.getnotes(note.getComsumerId());
            request.setAttribute("notes",notes);
        }catch (Exception e){
           return "error";
        }
        return "beiwang2"; //beiwang3是显示单个信息
    }
    @RequestMapping("beiinfo")
    public String getInfo(Integer owner,HttpServletRequest request){
       List<Note> notes= service.getnotes(owner);
       HttpSession session=request.getSession();
       session.setAttribute("notes",notes);
       return "beiwang2";//显示所有的信息
    }
    @RequestMapping("bei2")
    public String alter(Note note,String dat,HttpServletRequest request){
        return "beiwang2";
    }
    /**
     * 公共页面跳转
     */
    @RequestMapping("/{page}")
    public String goPage(@PathVariable("page") String pageStr ){
        return pageStr;
    }

    @RequestMapping("delBei")
    @ResponseBody
    public Data deleteBeiWang(Integer id, HttpServletRequest request, Integer owner){//删除掉后再查询出来
        Data data=new Data();
        int i=service.deleteById(id);
        if (i <=0){
            data.setCode(404);
            return data;
        }
        List<Note> notes=service.getnotes(owner);
        request.setAttribute("notes",notes);
        data.setCode(200);
        data.setDatas(notes);
        return data;
    }

}
