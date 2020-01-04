package com.resab.ticketmanager.bean;

import java.util.Date;

/**
 * @author resab
 */
public class PurcharseOrder {

    private Long ID;
    private Long userId;
    private Long movieId;
    private Date createOn;
    private Double price;
    private Long isDelete;
    private Long ticketsCode;
    private Long isPayed;
    private Long isCollection;
    private String filmName;
    private String userName;
    private Date releaseDate;


    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Long getID() {
        return ID;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getMovieId() {
        return movieId;
    }

    public Date getCreateOn() {
        return createOn;
    }

    public Long getIsDelete() {
        return isDelete;
    }

    public Long getTicketsCode() {
        return ticketsCode;
    }

    public Long getIsPayed() {
        return isPayed;
    }

    public Long getIsCollection() {
        return isCollection;
    }

    public void setID(Long OrderId) {
        this.ID = OrderId;
    }

    public void setUserId(Long UserId) {
        this.userId = UserId;
    }

    public void setMovieId(Long MovieId) {
        this.movieId = MovieId;
    }

    public void setCreateOn(Date CreateOn) {
        this.createOn = CreateOn;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setIsDelete(Long IsDelete) {
        this.isDelete = IsDelete;
    }

    public void setTicketsCode(Long TicketsCode) {
        this.ticketsCode = TicketsCode;
    }

    public void setIsPayed(Long IsPayed) {
        this.isPayed = IsPayed;
    }

    public void setIsCollection(Long IsCollection) {
        this.isCollection = IsCollection;
    }

    public PurcharseOrder() {
        super();
    }

    public PurcharseOrder(Long OrderId, Long UserId, Long MovieId, Date CreateOn, Double Price, Long IsDelete,
                          Long TicketsCode, Long IsPayed, Long IsCollection) {
        super();
        this.ID = OrderId;
        this.userId = UserId;
        this.movieId = MovieId;
        this.createOn = CreateOn;
        this.price = Price;
        this.isDelete = IsDelete;
        this.ticketsCode = TicketsCode;
        this.isPayed = IsPayed;
        this.isCollection = IsCollection;
    }

    public String getFilmName() {
        return filmName;
    }

    public void setFilmName(String filmName) {
        this.filmName = filmName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


}