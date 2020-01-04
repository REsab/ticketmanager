package com.resab.ticketmanager.bean;

import java.util.Date;

public class SeatsInfo {

    private Long id;
    private Long houseId;
    private Long filmId;
    private Long whichFilm;
    private Date dateView;
    private Long row;
    private Long col;
    private Date createOn;
    private Long orderId;

    public void setDateView(Date dateView) {
        this.dateView = dateView;
    }

    public void setCreateOn(Date createOn) {
        this.createOn = createOn;
    }

    public Long getUserID() {
        return UserID;
    }

    public void setUserID(Long userID) {
        UserID = userID;
    }

    private Long UserID;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Long getHouseId() {
        return houseId;
    }

    public void setHouseId(Long houseId) {
        this.houseId = houseId;
    }


    public Long getFilmId() {
        return filmId;
    }

    public void setFilmId(Long filmId) {
        this.filmId = filmId;
    }


    public Long getWhichFilm() {
        return whichFilm;
    }

    public void setWhichFilm(Long whichFilm) {
        this.whichFilm = whichFilm;
    }


    public Date getDateView() {
        return dateView;
    }

    public void setDateView(java.sql.Date dateView) {
        this.dateView = dateView;
    }


    public Long getRow() {
        return row;
    }

    public void setRow(Long row) {
        this.row = row;
    }


    public Long getCol() {
        return col;
    }

    public void setCol(Long col) {
        this.col = col;
    }


    public Date getCreateOn() {
        return createOn;
    }

    public void setCreateOn(java.sql.Date createOn) {
        this.createOn = createOn;
    }


    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

}
