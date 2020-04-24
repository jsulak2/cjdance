package com.cjdance.cjdance.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "classinfo")
public class classinfo {
    @Id
    @Column(name = "clid")
    private String clid;
    @Column(name = "clname")
    private String clname;
    @Column(name = "clroom")
    private String clroom;
    @Column(name = "cldaytime")
    private String cldaytime;


    public classinfo(){
    }

    public classinfo(String clid, String clname, String clroom, String cldaytime){
        this.clid = clid;
        this.clname = clname;
        this.clroom = clroom;
        this.cldaytime = cldaytime;

    }

    public String clid() {
        return clid;
    }

    public void setclid(String clid) {
        this.clid = clid;
    }

    public String getclname() {
        return clname;
    }

    public void setclname(String clname) {
        this.clname = clname;
    }

    public String getclroom() {
        return clroom;
    }

    public void setclroom(String clroom) {
        this.clroom= clroom;
    }

    public String getcldaytime() {
        return cldaytime;
    }

    public void setcldaytime(String cldaytime) {
        this.cldaytime = cldaytime;
    }



}
