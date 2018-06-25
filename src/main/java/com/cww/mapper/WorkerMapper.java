package com.cww.mapper;


import com.cww.pojo.Worker;
public interface WorkerMapper {
    Integer insertWork(Worker worker) throws com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
    Worker selectWork(Integer phone);
}
