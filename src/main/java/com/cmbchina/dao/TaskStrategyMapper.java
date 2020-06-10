package com.cmbchina.dao;

import com.cmbchina.pojo.TaskStrategy;

import java.util.List;

public interface TaskStrategyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TaskStrategy record);

    int insertSelective(TaskStrategy record);

    TaskStrategy selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TaskStrategy record);

    int updateByPrimaryKey(TaskStrategy record);

    List<TaskStrategy> selectList();
}