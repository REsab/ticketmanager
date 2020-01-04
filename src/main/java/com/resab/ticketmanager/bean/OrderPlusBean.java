package com.resab.ticketmanager.bean;

import java.sql.Timestamp;
import java.util.Date;

public class OrderPlusBean {

    //    SeatsInfo
    private Long id;
    private Long orderId;
    private Long houseId;
    private Long filmId;
    private Long whichFilm;
    private Long row;
    private Long userId;
    private Long col;
    private Long filmCatId; //类别编号


    //order
    private Long ID;
    private Long UserId;
    private Long MovieId;
    private Long IsDelete;
    private Long TicketsCode;
    private Long IsPayed;
    private Long IsCollection;

    private Date createOn;

    public void setDateView(Timestamp dateView) {
        this.dateView = dateView;
    }

    private Timestamp dateView;
    private Date releaseDate; //上映时间


    private Double Price;
    private Double price; //价格

    //film
    private String catName;
    private String filmName; //电影名字
    private String director; //导演
    private String summary; //简介摘要
    private String path1; //路径信息（URL使用）
    private String path2; //路径信息（URL使用）
    private String path4; //路径信息（URL使用）
    private String path3; //路径信息（URL使用）


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
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

    public void setCreateOn(Date createOn) {
        this.createOn = createOn;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double price) {
        Price = price;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getPath1() {
        return path1;
    }

    public void setPath1(String path1) {
        this.path1 = path1;
    }

    public String getPath2() {
        return path2;
    }

    public void setPath2(String path2) {
        this.path2 = path2;
    }

    public String getPath4() {
        return path4;
    }

    public void setPath4(String path4) {
        this.path4 = path4;
    }

    public String getPath3() {
        return path3;
    }

    public void setPath3(String path3) {
        this.path3 = path3;
    }

    public Long getIsDelete() {
        return IsDelete;
    }

    public void setIsDelete(Long isDelete) {
        IsDelete = isDelete;
    }

    public Long getTicketsCode() {
        return TicketsCode;
    }

    public void setTicketsCode(Long ticketsCode) {
        TicketsCode = ticketsCode;
    }

    public Long getIsPayed() {
        return IsPayed;
    }

    public void setIsPayed(Long isPayed) {
        IsPayed = isPayed;
    }

    public Long getIsCollection() {
        return IsCollection;
    }

    public void setIsCollection(Long isCollection) {
        IsCollection = isCollection;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public Long getFilmCatId() {
        return filmCatId;
    }

    public void setFilmCatId(Long filmCatId) {
        this.filmCatId = filmCatId;
    }

    public String getFilmName() {
        return filmName;
    }

    public void setFilmName(String filmName) {
        this.filmName = filmName;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getMovieId() {
        return MovieId;
    }

    public void setMovieId(Long movieId) {
        MovieId = movieId;
    }

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }
}
