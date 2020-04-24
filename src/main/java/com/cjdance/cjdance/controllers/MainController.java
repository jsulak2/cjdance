package com.cjdance.cjdance.controllers;

import com.cjdance.cjdance.Models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class MainController {

    @Autowired
    employeerepo emprepo;
    @Autowired
    classinforepo crepo;
    @Autowired
    dancerrepo drepo;
    @Autowired
    billrepo brepo;

    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }

    //  /signup/


    @RequestMapping( value = "/employee/", method = RequestMethod.GET)
    public ModelAndView viewEmployee(){
        ModelAndView mv = new ModelAndView("employee");
     /*   Optional<Employees> person = employeesRepo.findById(id);
        Employees personToMap = person.get(); */
        mv.addObject("employeelist", emprepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/classinfo/", method = RequestMethod.GET)
    public ModelAndView viewClass(){
        ModelAndView mv = new ModelAndView("classinfo");
        mv.addObject("classlist", crepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/dancer/", method = RequestMethod.GET)
    public ModelAndView viewDancer(){
        ModelAndView mv = new ModelAndView("dancer");
        mv.addObject("dancerlist", drepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/bill/", method = RequestMethod.GET)
    public ModelAndView viewBill(){
        ModelAndView mv = new ModelAndView("bill");
        mv.addObject("billlist", brepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/signup/", method = RequestMethod.GET)
    public ModelAndView viewSignup(){
        ModelAndView mv = new ModelAndView("signup");
        //mv.addObject("signup", brepo.findAll());

       return mv;
    }

}
/*
{id}
@PathVariable("id") String id
Optional<employee> person = emprepo.findById(id);
employee personToMap = person.get();
 mv.addObject("selectedItem", personToMap);
 */