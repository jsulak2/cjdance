package com.cjdance.cjdance.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "bill")
public class bill {
    @Id
    @Column(name = "billid")
    private String billid;
    @Column(name = "billdancer")
    private String billdancer;
    @Column(name = "billdate")
    private String billdate;
    @Column(name = "billnumclasses")
    private String billnumclasses;
    @Column(name = "billtotal")
    private String billtotal;
    @Column(name = "billpaid")
    private boolean billpaid;

    public bill(){
    }

    public bill(String billid, String billdancer, String billdate, String billnumclasses,
                String billtotal, boolean billpaid){
        this.billid = billid;
        this.billdancer = billdancer;
        this.billdate = billdate;
        this.billnumclasses = billnumclasses;
        this.billtotal = billtotal;
        this.billpaid = billpaid;
    }

    public String getbillid() {
        return billid;
    }

    public void setbillid(String billid) {
        this.billid = billid;
    }

    public String getbilldancer() {
        return billdancer;
    }

    public void setbilldancer(String billdancer) {
        this.billdancer = billdancer;
    }

    public String getbilldate() {
        return billdate;
    }

    public void setbilldate(String billdate) {
        this.billdate= billdate;
    }

    public String getbillnumclasses() {
        return billnumclasses;
    }

    public void setbillnumclasses(String billnumclasses) {
        this.billnumclasses = billnumclasses;
    }

    public String getbilltotal() {
        return billtotal;
    }

    public void setbilltotal(String billtotal) {
        this.billtotal = billtotal;
    }


    public boolean getbillpaid() {
        return billpaid;
    }

    public void setbillpaid(boolean billpaid) {
        this.billpaid = billpaid;
    }
}
