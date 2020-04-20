package com.cjdance.cjdance.Models;

import javax.persistence.;

@Entity
@Table(name = "employee")
public class employee {
    @Id
    @Column(name = "empid")
    private String empid;
    @Column(name = "empfname")
    private String empfname;
    @Column(name = "emplname")
    private String emplname;
    @Column(name = "empphone")
    private String empphone;
    @Column(name = "empemail")
    private String empemail;
    @Column(name = "isinstructor")
    private boolean isinstructor;

    public employee(){
    }

    public employee(String empid, String empfname, String emplname, String empphone, String empemail, boolean isinstructor){
        this.empid = empid;
        this.empfname = empfname;
        this.emplname = emplname;
        this.empphone = empphone;
        this.empemail = empemail;
        this.isinstructor = isinstructor;
    }

    public String getempid() {
        return empid;
    }

    public void setempid(String empid) {
        this.empid = empid;
    }

    public String getempfname() {
        return empfname;
    }

    public void setempfname(String empfname) {
        this.empfname = empfname;
    }

    public String getemplname() {
        return emplname;
    }

    public void setemplname(String emplname) {
        this.emplname = emplname;
    }

    public String getempphone() {
        return empphone;
    }

    public void setempphone(String empphone) {
        this.empphone = empphone;
    }

    public String getempemail() {
        return empemail;
    }

    public void setempemail(String empfname) {
        this.empid = empfname;
    }

    public String getempfname() {
        return empfname;
    }

    public void setempfname(String empfname) {
        this.empid = empfname;
    }

}
