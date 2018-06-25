package com.cww.service;

import com.cww.pojo.Worker;

public interface WorkerService {
    Integer addWorker(Worker worker) throws Exception;
    Worker findWorker(Integer phone);
}
