package com.cww.service.impl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cww.mapper.WorkerMapper;
import com.cww.pojo.Worker;
import com.cww.service.WorkerService;
@Service
public class WorkerServiceImpl implements WorkerService {
    @Autowired
    WorkerMapper mapper;
    @Override
    public Integer addWorker(Worker worker) throws Exception {
    	//将地址存起来
        Integer num = mapper.insertWork(worker);
        return num;
    }
	@Override
	public Worker findWorker(Integer phone) {
		Worker worker = mapper.selectWork(phone);
		return worker;
	}


}
