package com.cmbchina.controller;

import com.cmbchina.pojo.TaskStrategy;
import com.cmbchina.service.TaskStrategyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TaskStrategyController {

    @Autowired
    TaskStrategyService taskStrategyService;

    @RequestMapping("list")
    public String get(Model model){
        List<TaskStrategy> taskStrategy = taskStrategyService.getList();
        System.out.println(taskStrategy+"+++++");
        model.addAttribute("taskStrategys", taskStrategy);
        return "list";
    }

    @RequestMapping("getById")
    public String getById(Integer id, Model model){
        TaskStrategy taskStrategy = taskStrategyService.getById(id);
        model.addAttribute("taskStrategy", taskStrategy);
        return "list";
    }

    @RequestMapping("toadd")
    public String toadd(){
        return "add";
    }

    @RequestMapping("add")
    public String add(TaskStrategy taskStrategy) throws Exception {
        taskStrategyService.add(taskStrategy);
        return "success";
    }

    public static void main(String[] args) {
        System.out.println("第一次提交");
        System.out.println("第二次提交");
        System.out.println("第三次提交");
        System.out.println("第四次提交");
    }
}
