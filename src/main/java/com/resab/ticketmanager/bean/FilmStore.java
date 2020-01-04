package com.resab.ticketmanager.bean;

public class FilmStore implements java.io.Serializable {

    /**
     *
     */
    private static final long serialVersionUID = -6906662344401979594L;

    private Long id;
    private Long filmId;
    private Long ticketTotal;
    private Long ticketNow;
    private Long whichFilm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFilmId() {
        return filmId;
    }

    public void setFilmId(Long filmId) {
        this.filmId = filmId;
    }

    public Long getTicketTotal() {
        return ticketTotal;
    }

    public void setTicketTotal(Long ticketTotal) {
        this.ticketTotal = ticketTotal;
    }

    public Long getTicketNow() {
        return ticketNow;
    }

    public void setTicketNow(Long ticketNow) {
        this.ticketNow = ticketNow;
    }

    public Long getWhichFilm() {
        return whichFilm;
    }

    public void setWhichFilm(Long wichFilm) {
        this.whichFilm = wichFilm;
    }
}
