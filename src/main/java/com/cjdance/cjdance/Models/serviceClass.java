package com.cjdance.cjdance.Models;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.*;


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

    public List
    fetchEmpBillDataInnerJoin()
    {
        return fetchEmpBillDataInnerJoin()
    }
}
