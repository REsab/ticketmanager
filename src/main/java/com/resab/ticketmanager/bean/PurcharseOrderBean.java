package com.resab.ticketmanager.bean;


import java.util.Date;

/**
 * @author resab
 */
public class PurcharseOrderBean {

    private Long ID;
    private Long UserId;
    private Long MovieId;
    private Date CreateOn;
    private Double Price;
    private Long IsDelete;
    private Long TicketsCode;
    private Long IsPayed;
    private Long IsCollection;

    public Long getID() {
        return ID;
    }

    public Long getUserId() {
        return UserId;
    }

    public Long getMovieId() {
        return MovieId;
    }

    public Date getCreateOn() {
        return CreateOn;
    }


    public Long getIsDelete() {
        return IsDelete;
    }

    public Long getTicketsCode() {
        return TicketsCode;
    }

    public Long getIsPayed() {
        return IsPayed;
    }

    public Long getIsCollection() {
        return IsCollection;
    }

    public void setID(Long OrderId) {
        this.ID = OrderId;
    }

    public void setUserId(Long UserId) {
        this.UserId = UserId;
    }

    public void setMovieId(Long MovieId) {
        this.MovieId = MovieId;
    }

    public void setCreateOn(Date CreateOn) {
        this.CreateOn = CreateOn;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double price) {
        Price = price;
    }

    public void setIsDelete(Long IsDelete) {
        this.IsDelete = IsDelete;
    }

    public void setTicketsCode(Long TicketsCode) {
        this.TicketsCode = TicketsCode;
    }

    public void setIsPayed(Long IsPayed) {
        this.IsPayed = IsPayed;
    }

    public void setIsCollection(Long IsCollection) {
        this.IsCollection = IsCollection;
    }

    public PurcharseOrderBean() {
        super();
    }

    public PurcharseOrderBean(Long OrderId, Long UserId, Long MovieId, Date CreateOn, Double Price, Long IsDelete, Long TicketsCode, Long IsPayed, Long IsCollection) {
        super();
        this.ID = OrderId;
        this.UserId = UserId;
        this.MovieId = MovieId;
        this.CreateOn = CreateOn;
        this.Price = Price;
        this.IsDelete = IsDelete;
        this.TicketsCode = TicketsCode;
        this.IsPayed = IsPayed;
        this.IsCollection = IsCollection;
    }
}