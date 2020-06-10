package com.cmbchina.service.impl;

import com.cmbchina.dao.TaskStrategyMapper;
import com.cmbchina.pojo.TaskStrategy;
import com.cmbchina.service.TaskStrategyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskStrategyServiceImpl implements TaskStrategyService {
    @Autowired
    TaskStrategyMapper taskStrategyMapper;

    @Override
    public List<TaskStrategy> getList() {
        return taskStrategyMapper.selectList();
    }

    @Override
    public TaskStrategy getById(Integer id) {
        return taskStrategyMapper.selectByPrimaryKey(id);
    }

    @Override
    public void add(TaskStrategy taskStrategy) throws Exception {

        try {
            taskStrategyMapper.insert(taskStrategy);
        } catch (Exception e) {
            if (e instanceof DuplicateKeyException) {
                throw new Exception("已存在");
            }
        }
    }
}
