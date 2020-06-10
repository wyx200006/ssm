package com.cmbchina.service;

import com.cmbchina.pojo.TaskStrategy;

import java.util.List;

public interface TaskStrategyService {
    List<TaskStrategy> getList();

    TaskStrategy getById(Integer id);

    void add(TaskStrategy taskStrategy) throws Exception;
}
