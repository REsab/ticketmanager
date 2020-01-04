package com.resab.ticketmanager.bean;

import java.util.Date;

public class FilmInfo implements java.io.Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 6804151602234630585L;
    private String catName;
    private Long filmId;  //电影编号
    private Long filmCatId; //类别编号
    private String filmName; //电影名字
    private Date releaseDate; //上映时间
    private String director; //导演
    private Double price; //价格
    private String summary; //简介摘要
    private String path; //路径信息（URL使用）
    private String path1; //路径信息（URL使用）
    private String path2; //路径信息（URL使用）
    private String path4; //路径信息（URL使用）
    private String path3; //路径信息（URL使用）

    public String getPath4() {
        return path4;
    }

    public void setPath4(String path4) {
        this.path4 = path4;
    }


    private String createBy; //创建人
    private Date createOn; //创建时间
    private String updateBy; //修改人
    private Date updateOn; //修改时间
    private Long hot; //热度
    private String actorMain; //主演
    private String actorOther; //其他演员
    private String content;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
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

    public String getPath3() {
        return path3;
    }

    public void setPath3(String path3) {
        this.path3 = path3;
    }

    public Long getFilmId() {
        return filmId;
    }

    public void setFilmId(Long filmId) {
        this.filmId = filmId;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateOn() {
        return createOn;
    }

    public void setCreateOn(Date createOn) {
        this.createOn = createOn;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateOn() {
        return updateOn;
    }

    public void setUpdateOn(Date upadteOn) {
        this.updateOn = upadteOn;
    }

    public Long getHot() {
        return hot;
    }

    public void setHot(Long hot) {
        this.hot = hot;
    }

    public String getActorMain() {
        return actorMain;
    }

    public void setActorMain(String actorMain) {
        this.actorMain = actorMain;
    }

    public String getActorOther() {
        return actorOther;
    }

    public void setActorOther(String actorOther) {
        this.actorOther = actorOther;
    }


}
