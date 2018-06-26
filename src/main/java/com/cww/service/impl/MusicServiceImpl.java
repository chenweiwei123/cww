package com.cww.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cww.mapper.MusicMapper;
import com.cww.pojo.Music;
import com.cww.service.MusicService;
@Service
public class MusicServiceImpl implements MusicService{
	@Autowired
	MusicMapper mapper;
	@Override
	public List<Music> FindMusics(Integer start, Integer step) {
		return mapper.findAllMusic(start, step);
	}

}
