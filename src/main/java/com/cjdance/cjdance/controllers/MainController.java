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


    @RequestMapping( value = "/employee", method = RequestMethod.GET)
    public ModelAndView viewEmployee(){
        ModelAndView mv = new ModelAndView("employee");
     /*   Optional<Employees> person = employeesRepo.findById(id);
        Employees personToMap = person.get(); */
        mv.addObject("employeelist", emprepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/classinfo", method = RequestMethod.GET)
    public ModelAndView viewClass(){
        ModelAndView mv = new ModelAndView("classinfo");
        mv.addObject("classlist", crepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/dancer", method = RequestMethod.GET)
    public ModelAndView viewDancer(){
        ModelAndView mv = new ModelAndView("dancer");
        mv.addObject("dancerlist", drepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/bill", method = RequestMethod.GET)
    public ModelAndView viewBill(){
        ModelAndView mv = new ModelAndView("bill");
        mv.addObject("billlist", brepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/signup", method = RequestMethod.GET)
    public ModelAndView viewSignup(){
        ModelAndView mv = new ModelAndView("signup");
        //mv.addObject("signup", brepo.findAll());

        return mv;
    }

    //Employee CRUD
    @RequestMapping( value = "/editemployee/{id}", method = RequestMethod.GET)
    public ModelAndView editEmployee(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("/editemployee");
        Optional<employee> person = emprepo.findById(id);
        employee personToMap = person.get();
        mv.addObject("selectedItem", personToMap);
        return mv;
    }
    @RequestMapping(value = "/saveemp", method = RequestMethod.POST)
    public ModelAndView saveEmployee(@RequestParam("empid") String empid, @RequestParam("empfname") String empfname,
                             @RequestParam("emplname") String emplname, @RequestParam("empphone") String empphone,
                             @RequestParam("empemail") String empemail){
        ModelAndView mv = new ModelAndView("/employee");
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
        personToSave.setempphone(empphone);
        personToSave.setempemail(empemail);
        emprepo.save(personToSave);
        mv.addObject("employeelist", emprepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/deleteemp/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEmployee(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/employee");
        emprepo.deleteById(id);
        return mv;
    }




    //Class CRUD
    @RequestMapping( value = "/editclassinfo/{id}", method = RequestMethod.GET)
    public ModelAndView editClass(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("/editclassinfo");
        Optional<classinfo> person = crepo.findById(id);
        classinfo personToMap = person.get();
        mv.addObject("selectedItem", personToMap);
        return mv;
    }

    /*@RequestMapping( value = "/editclass/{id}", method = RequestMethod.GET)
    public ModelAndView editClass(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("/editclass");
        Optional<classinfo> cls = crepo.findById(id);
        classinfo classToMap = cls.get();
        mv.addObject("selectedItem", classToMap);
        return mv;
    }*/

    @RequestMapping(value = "/saveclassinfo", method = RequestMethod.POST)
    public ModelAndView saveClass(@RequestParam("clid") String clid, @RequestParam("clname") String clname,
                                  @RequestParam("clroom") String clroom, @RequestParam("cldaytime") String cldaytime){
        ModelAndView mv = new ModelAndView("/classinfo");
        classinfo personToSave ;
        if(!clid.isEmpty())
        {
            Optional<classinfo> users = crepo.findById(clid);
            personToSave = users.get();
        }
        else
        {
            personToSave = new classinfo();
            personToSave.setclid(UUID.randomUUID().toString());
        }
        personToSave.setclname(clname);
        personToSave.setclroom(clroom);
        personToSave.setcldaytime(cldaytime);

        crepo.save(personToSave);
        mv.addObject("classlist", crepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/deleteclass/{id}", method = RequestMethod.GET)
    public ModelAndView deleteClass(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/classinfo");
        crepo.deleteById(id);
        return mv;
    }

    //Dancer CRUD
    @RequestMapping( value = "/editdancer/{id}", method = RequestMethod.GET)
    public ModelAndView editDancer(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("/editDancer");
        Optional<dancer> person = drepo.findById(id);
        dancer personToMap = person.get();
        mv.addObject("selectedItem", personToMap);
        return mv;
    }

    @RequestMapping(value = "/savedancer", method = RequestMethod.POST)
    public ModelAndView saveDancer(@RequestParam("dancid") String dancid, @RequestParam("dancfname") String dancfname,
                             @RequestParam("danclname") String danclname, @RequestParam("dancdob") String dancdob,
                             @RequestParam("dancphone") String dancphone,@RequestParam("dancemail") String dancemail){
        ModelAndView mv = new ModelAndView("/dancer");
        dancer personToSave ;
        if(!dancid.isEmpty())
        {
            Optional<dancer> users = drepo.findById(dancid);
            personToSave = users.get();
        }
        else
        {
            personToSave = new dancer();
            personToSave.setdancid(UUID.randomUUID().toString());
        }
        personToSave.setdancfname(dancfname);
        personToSave.setdanclname(danclname);
        personToSave.setdancphone(dancphone);
        personToSave.setdancdob(dancdob);
        personToSave.setdancemail(dancemail);
        drepo.save(personToSave);
        mv.addObject("dancerlist", drepo.findAll());
        return mv;
    }

    @RequestMapping( value = "/deletedancer/{id}", method = RequestMethod.GET)
    public ModelAndView deleteDancer(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/dancer");
        drepo.deleteById(id);
        return mv;
    }







}
