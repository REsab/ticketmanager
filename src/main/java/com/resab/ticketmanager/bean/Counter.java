package com.resab.ticketmanager.bean;

public class Counter implements java.io.Serializable {

    /**
     *
     */
    private static final long serialVersionUID = -431571486506028615L;

    private Integer counterId; //计数器id
    private Integer num; //次数

    public Integer getCounterId() {
        return counterId;
    }

    public void setCounterId(Integer counterId) {
        this.counterId = counterId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }


}
