package com.cww.pojo;

import org.springframework.web.multipart.MultipartFile;

public class Worker {
    private Integer id;
    private String name;
    private String password;
    private Integer sex=1;
    private String address;
    private Integer phone;
    private Integer number;
    private Integer qq;
    private String wechat;
    private String department;
    private String position;
    private MultipartFile file;
    private String image;

    
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getQq() {
        return qq;
    }

    public void setQq(Integer qq) {
        this.qq = qq;
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Worker() {
        super();
    }

    public Worker(Integer id, String name, String password, Integer sex, String address, Integer phone, Integer number, Integer qq, String wechat, String department, String position) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.sex = sex;
        this.address = address;
        this.phone = phone;
        this.number = number;
        this.qq = qq;
        this.wechat = wechat;
        this.department = department;
        this.position = position;
    }
}
