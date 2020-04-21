package com.cjdance.cjdance.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class MainController {

    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
    //    mv.addObject("employeelist", employeesRepo.findAll());
        return mv;
    }

    @RequestMapping( value = "/employee/", method = RequestMethod.GET)
    public ModelAndView viewEmployee(){
        ModelAndView mv = new ModelAndView("employee");
     /*   Optional<Employees> person = employeesRepo.findById(id);
        Employees personToMap = person.get();
        mv.addAllObjects(); */
        return mv;
    }
    @RequestMapping( value = "/classinfo/", method = RequestMethod.GET)
    public ModelAndView viewClass(){
        ModelAndView mv = new ModelAndView("classinfo");
        return mv;
    }
    @RequestMapping( value = "/dancer/", method = RequestMethod.GET)
    public ModelAndView viewDancer(){
        ModelAndView mv = new ModelAndView("dancer");
        return mv;
    }
    @RequestMapping( value = "/bill/", method = RequestMethod.GET)
    public ModelAndView viewBill(){
        ModelAndView mv = new ModelAndView("bill");
        return mv;
    }

}
