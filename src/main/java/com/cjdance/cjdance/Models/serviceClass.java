package com.cjdance.cjdance.Models;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.*;
import java.util.Optional;


/**
 * This was not something that either of us knew how to do, so we found a website that explained it. The link is below:
 * https://www.roytuts.com/spring-boot-data-jpa-left-right-inner-and-cross-join-examples/amp/
 */


@Service
public class serviceClass
{
    @Autowired
    private employeerepo er;
    @Autowired
    private dancerrepo dr;
    @Autowired
    private classinforepo cir;
    @Autowired
    private billrepo br;

    public String getempname(String id){
        String empname = "";
        employee person;
        Optional<employee> users = er.findById(id);
        person = users.get();
        empname = person.getempfname() + " " + person.getemplname();

        return empname;
    }

}
