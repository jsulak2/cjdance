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
import java.util.UUID;

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

    @RequestMapping( value = "/editemployee/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("editemployee");
        Optional<employee> person = emprepo.findById(id);
        employee personToMap = person.get();
        mv.addObject("selectedItem", personToMap);
        return mv;
    }

    @RequestMapping(value = "/saveemp/", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("empid") String empid, @RequestParam("empfname") String empfname, @RequestParam("emplname") String emplname){
        ModelAndView mv = new ModelAndView("/employee/");
        employee personToSave ;
        if(!empid.isEmpty())
        {
            Optional<employee> users = emprepo.findById(empid);
            personToSave = users.get();
        }
        else
        {
            personToSave = new employee();
            personToSave.setempid(UUID.randomUUID().toString());
        }
        personToSave.setempfname(empfname);
        personToSave.setemplname(emplname);
        emprepo.save(personToSave);
        mv.addObject("employeelist", emprepo.findAll());
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