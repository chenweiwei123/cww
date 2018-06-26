package com.cww.controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.validator.internal.util.privilegedactions.GetConstraintValidatorList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cww.pojo.Music;
import com.cww.service.MusicService;
@Controller()
@RequestMapping("/music")
public class MusicController {
	@Autowired
	MusicService service;
	
	/**
	 * 查询所有的音乐
	 */
	@RequestMapping("/list")
	@ResponseBody
	public List<Music> getMusics(Integer start,Integer step){
		List<Music> musics=new ArrayList<>();
		return musics;
	}
	  /**
     * 公共页面跳转
     */
    @RequestMapping("/{page}")
    public String goPage(@PathVariable("page") String pageStr ){
    	return pageStr;
    }
}
