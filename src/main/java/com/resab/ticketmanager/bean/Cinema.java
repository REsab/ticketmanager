package com.resab.ticketmanager.bean;


import java.util.Date;

public class Cinema {

    private Long ID;
    private String CinemaName;
    private String AccoutName;
    private String AccoutPwd;
    private String Tel2;
    private String Tel1;
    private String Rooms;


    private String Addr3County;
    private String Addr2City;
    private String Addr1Province;


    private Date OpenTimeEnd;
    private Date OpenTimeStart;


    public Long getID() {
        return ID;
    }

    public String getCinemaName() {
        return CinemaName;
    }

    public String getAccoutName() {
        return AccoutName;
    }

    public String getAccoutPwd() {
        return AccoutPwd;
    }

    public String getTel2() {
        return Tel2;
    }

    public String getTel1() {
        return Tel1;
    }

    public String getAddr3County() {
        return Addr3County;
    }

    public String getAddr2City() {
        return Addr2City;
    }

    public String getAddr1Province() {
        return Addr1Province;
    }

    public Date getOpenTimeEnd() {
        return OpenTimeEnd;
    }

    public Date getOpenTimeStart() {
        return OpenTimeStart;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public void setCinemaName(String CinemaName) {
        this.CinemaName = CinemaName;
    }

    public void setAccoutName(String AccoutName) {
        this.AccoutName = AccoutName;
    }

    public void setAccoutPwd(String AccoutPwd) {
        this.AccoutPwd = AccoutPwd;
    }

    public void setTel2(String Tel2) {
        this.Tel2 = Tel2;
    }

    public void setTel1(String Tel1) {
        this.Tel1 = Tel1;
    }

    public void setAddr3County(String Addr3County) {
        this.Addr3County = Addr3County;
    }

    public void setAddr2City(String Addr2City) {
        this.Addr2City = Addr2City;
    }

    public void setAddr1Province(String Addr1Province) {
        this.Addr1Province = Addr1Province;
    }

    public void setOpenTimeEnd(Date OpenTimeEnd) {
        this.OpenTimeEnd = OpenTimeEnd;
    }

    public void setOpenTimeStart(Date OpenTimeStart) {
        this.OpenTimeStart = OpenTimeStart;
    }

    public Cinema() {
        super();
    }

    public Cinema(String CinemaName, String AccoutName, String AccoutPwd, String Tel2, String Tel1, String Addr3County, String Addr2City, String Addr1Province, Date OpenTimeEnd, Date OpenTimeStart) {
        super();
        this.ID = ID;
        this.CinemaName = CinemaName;
        this.AccoutName = AccoutName;
        this.AccoutPwd = AccoutPwd;
        this.Tel2 = Tel2;
        this.Tel1 = Tel1;
        this.Addr3County = Addr3County;
        this.Addr2City = Addr2City;
        this.Addr1Province = Addr1Province;
        this.OpenTimeEnd = OpenTimeEnd;
        this.OpenTimeStart = OpenTimeStart;
    }

    public Cinema(String CinemaName, String AccoutName, String AccoutPwd, String Tel2, String Tel1, String Addr3County, String Addr2City, String Addr1Province) {
        super();
        this.ID = ID;
        this.CinemaName = CinemaName;
        this.AccoutName = AccoutName;
        this.AccoutPwd = AccoutPwd;
        this.Tel2 = Tel2;
        this.Tel1 = Tel1;
        this.Addr3County = Addr3County;
        this.Addr2City = Addr2City;
        this.Addr1Province = Addr1Province;

    }

    public String getRooms() {
        return Rooms;
    }

    public void setRooms(String rooms) {
        Rooms = rooms;
    }
}