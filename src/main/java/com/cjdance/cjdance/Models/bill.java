package com.cjdance.cjdance.Models;

import javax.persistence.*;
import java.awt.*;


@Entity
@Table(name = "bill")
public class bill {
    @Id
    @Column(name = "billid")
    private String billid;
    @Column(name = "billempid")
    private String billempid;
    @Column(name = "billclassid")
    private String billclassid;
    @Column(name = "billdancerid")
    private String billdancerid;
    @Column(name = "billdate")
    private String billdate;
    @Column(name = "billtotal")
    private String billtotal = "$45";


   /*

    @OneToOne(mappedBy = "danceid")
    private dancer dncr;

   @ManyToOne
    @JoinColumn(name="dancid")
    private List<dancer> dncr;*/

    public bill(){
    }

    public bill(String billid, String billempid, String billclassid, String billdancerid,
                String billdate, String billtotal){
        this.billid = billid;
        this.billempid = billempid;
        this.billclassid = billclassid;
        this.billdancerid = billdancerid;
        this.billdate = billdate;
        this.billtotal = billtotal;
    }

    public String getbillid() {
        return billid;
    }

    public void setbillid(String billid) {
        this.billid = billid;
    }

    public String getbillempid() {
        return billempid;
    }

    public void setbillempid(String billempid) {
        this.billclassid = billempid;
    }


    public String getbillclassid() {
        return billclassid;
    }

    public void setbillclassid(String billclassid) {
        this.billclassid = billclassid;
    }


    public String getbilldancerid() {
        return billdancerid;
    }

    public void setbilldancerid(String billbilldancerid) {
        this.billdancerid= billdancerid;
    }

    public String getbilldate() {
        return billdate;
    }

    public void setbilldate(String billdate) {
        this.billdate = billdate;
    }

    public String getbilltotal() {
        return billtotal;
    }

    public void setbilltotal(String billtotal) {
        this.billtotal = billtotal;
    }



/*
    public dancer getDncr() {
        return dncr;
    }
 */

    public String getdancername(String id)
    {
        dancer dncr = new dancer();
        String dancerstr = "";
        dancerstr = dncr.getdancfname()+" "+dncr.getdanclname();
        return dancerstr;
    }


}
