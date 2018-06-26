package com.cww.pojo;

public class Music {
	private Integer id;
	private String images;
	private String location;
	private String name;
	private Singer singer;
	private Integer follow;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Singer getSinger() {
		return singer;
	}
	public void setSinger(Singer singer) {
		this.singer = singer;
	}
	public Integer getFollow() {
		return follow;
	}
	public void setFollow(Integer follow) {
		this.follow = follow;
	}
	public Music(Integer id, String images, String location, String name, Singer singer, Integer follow) {
		super();
		this.id = id;
		this.images = images;
		this.location = location;
		this.name = name;
		this.singer = singer;
		this.follow = follow;
	}
	public Music() {
		super();
	}
	

}
