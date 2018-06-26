package com.cww.service;

import java.util.List;

import com.cww.pojo.Music;
public interface MusicService {
	List<Music> FindMusics(Integer start,Integer step);
}
