package com.cww.pojo;

public class Singer {
	private Integer id;
	private Integer follow;
	private String	location;
	private String name;
	private Integer sex;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getFollow() {
		return follow;
	}
	public void setFollow(Integer follow) {
		this.follow = follow;
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
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public Singer(Integer id, Integer follow, String location, String name, Integer sex) {
		super();
		this.id = id;
		this.follow = follow;
		this.location = location;
		this.name = name;
		this.sex = sex;
	}
	public Singer() {
		super();
	}
	
}
