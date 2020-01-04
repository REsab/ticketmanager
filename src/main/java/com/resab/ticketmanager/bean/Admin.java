package com.resab.ticketmanager.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * @Description
 * @Date 2020/1/4 22:19
 * @Author 郑跃琳
 */
@TableName(value = "admin")//指定表名
public class Admin {


    //value与数据库主键列名一致，若实体类属性名与表主键列名一致可省略value
    @TableId(value = "id", type = IdType.AUTO)//指定自增策略
    private Integer id;
    //若没有开启驼峰命名，或者表中列名不符合驼峰规则，
    // 可通过该注解指定数据库表中的列名，
    // exist标明数据表中有没有对应列
    @TableField(value = "name", exist = false)
    private String name;


    @TableField(value = "pwd")
    private String pwd;


    private String email;


    public Integer getId() {
        return id;
    }

    public Admin setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Admin setName(String name) {
        this.name = name;
        return this;
    }

    public String getPwd() {
        return pwd;
    }

    public Admin setPwd(String pwd) {
        this.pwd = pwd;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Admin setEmail(String email) {
        this.email = email;
        return this;
    }
}
