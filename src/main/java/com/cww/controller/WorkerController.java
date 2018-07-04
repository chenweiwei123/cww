package com.cww.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import com.sun.xml.internal.ws.api.policy.PolicyResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.cww.pojo.Worker;
import com.cww.service.WorkerService;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/worker")
public class WorkerController {
    @Autowired
    WorkerService service;
    /**
     * 手机登录+密码(手机号不能重复)  ok
     * @return 路径的string形式
     */
    @RequestMapping(value="/login")
    public String getLogin(@RequestParam("phone") Integer phone,String password,ModelMap map){
    	Worker worker = service.findWorker(phone);
    	if(worker == null ) return "register";
    	String pwd = worker.getPassword();
    	if(!pwd.equals(password)) {
    		return "register";
    	}
    	map.addAttribute("worker", worker);
      return "login2";
    }
    @RequestMapping(value="/info")
    public String getInfo(@RequestParam("phone") Integer phone,ModelMap map, HttpServletRequest req) {
    	Worker worker = service.findWorker(phone);
    	if(worker == null ) return "login2";
		ServletContext context = req.getServletContext();
		context.setAttribute("worker",worker);
    	return "info";
    }
    @RequestMapping(value="/registers", method=RequestMethod.POST)
    public String  addRegister(Worker worker, ModelMap map, HttpServletRequest req){
    	int num;
    	String path = "/OfficeXm/2/img/";
    	HttpSession session=req.getSession();
    	//文件类型 application/java
    	if(worker.getFile() != null) {

    		String type=worker.getFile().getContentType();
    		System.out.println(type);
    		//获取后缀
    		String owner=type.substring(type.indexOf("/")+1);
    		String filen=path+worker.getFile().getOriginalFilename().substring(0,worker.getFile().getOriginalFilename().indexOf("."))+new Date().getTime()+"."+owner;
    		try {
    			worker.getFile().transferTo(new File(filen));
    		} catch (IllegalStateException | IOException e1) {
    			return "404";
    		}
    		worker.setImage(path+"."+owner);
    	}else {
    		String defaultName="/OfficeXm/2/img/xiaoren.jpg";
    		worker.setImage(defaultName);
    	}
		try {
			num = service.addWorker(worker);
		} catch (Exception e) {
			return "404";
		}
        if (num ==0){//添加失败
            return "404";
        }
		ServletContext context = req.getServletContext();
		context.setAttribute("worker",worker);
		return "login2";
    }
    /**
     * 公共页面跳转
     */
    @RequestMapping("/{page}")
    public String goPage(@PathVariable("page") String pageStr ){
    	return pageStr;
    }
}
