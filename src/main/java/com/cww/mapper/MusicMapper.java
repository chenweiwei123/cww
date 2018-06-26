package com.cww.mapper;

import java.util.List;

import com.cww.pojo.Music;

public interface MusicMapper {
	List<Music> findAllMusic(Integer start,Integer step);
}
