package com.cjdance.cjdance.Models;

import javax.persistence.*;

@Entity
@Table(name = "dancer")
public class dancer {
    @Id
    @Column(name = "dancid")
    private String dancid;
    @Column(name = "dancfname")
    private String dancfname;
    @Column(name = "danclname")
    private String danclname;
    @Column(name = "dancdob")
    private String dancdob;
    @Column(name = "dancphone")
    private String dancphone;
    @Column(name = "dancemail")
    private String dancemail;
    @Column(name = "dancaddress")
    private String dancaddress;
    @Column(name = "danczip")
    private String danczip;
    @Column(name = "dancstate")
    private String dancstate;
    //@OneToMany(mappedBy = "dancid")


    public dancer(){
    }

    public dancer(String dancid, String dancfname, String danclname, String dancdob, String dancphone,
                  String dancemail, String dancaddress, String danczip, String dancstate ){
        this.dancid = dancid;
        this.dancfname = dancfname;
        this.danclname = danclname;
        this.dancdob = dancdob;
        this.dancphone = dancphone;
        this.dancemail = dancemail;
        this.dancaddress = dancaddress;
        this.danczip = danczip;
        this.dancstate = dancstate;
    }

    public String getdancid() {
        return dancid;
    }

    public void setdancid(String dancid) {
        this.dancid = dancid;
    }

    public String getdancfname() {
        return dancfname;
    }

    public void setdancfname(String dancfname) {
        this.dancfname = dancfname;
    }

    public String getdanclname() {
        return danclname;
    }

    public void setdanclname(String danclname) {
        this.danclname= danclname;
    }

    public String getdancdob() {
        return dancdob;
    }

    public void setdancdob(String dancdob) {
        this.dancdob = dancdob;
    }

    public String getdancphone() {
        return dancphone;
    }

    public void setdancphone(String dancphone) {
        this.dancphone = dancphone;
    }

    public String getdancemail() {
        return dancemail;
    }

    public void setdancemail(String dancemail) {
        this.dancemail = dancemail;
    }


    public String getdancaddress() {
        return dancaddress;
    }

    public void setdancaddress(String dancaddress) {
        this.dancaddress= dancaddress;
    }

    public String getdanczip() {
        return danczip;
    }

    public void setdanczip(String danczip) {
        this.danczip = danczip;
    }

    public String getdancstate() {
        return dancstate;
    }

    public void setdancstate(String dancstate) {
        this.dancstate = dancstate;
    }
}
