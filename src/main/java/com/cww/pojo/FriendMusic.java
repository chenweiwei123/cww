package com.cww.pojo;

public class FriendMusic {
	private Integer id;
	private Worker fid;
	private Music mid;
	private String desc;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Worker getFid() {
		return fid;
	}
	public void setFid(Worker fid) {
		this.fid = fid;
	}
	public Music getMid() {
		return mid;
	}
	public void setMid(Music mid) {
		this.mid = mid;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public FriendMusic(Integer id, Worker fid, Music mid, String desc) {
		super();
		this.id = id;
		this.fid = fid;
		this.mid = mid;
		this.desc = desc;
	}
	public FriendMusic() {
		super();
	}
	
}
