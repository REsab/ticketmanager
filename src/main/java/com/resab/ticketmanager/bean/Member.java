package com.resab.ticketmanager.bean;

import java.util.Date;

/**
 * member bean层 用户
 *
 * @author zs
 */
public class Member implements java.io.Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 528509718742525178L;

    private Long userId;// 用户Id
    private String userName;// 用户名
    private String userPass;// 用户密码
    private String role; //角色（如管理员admin和其他others）
    private String nickName;// 昵称
    private Long isVIP; //标识是否是VIP，1标识VIP
    private String email;// 邮箱
    private String mobile;// 手机号码
    private Date createOn;// 创建时间
    private Date updateOn;// 更新时间
    private Long isUnUse;//是否禁用，1表示禁用，0表示可用

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public Long getIsVIP() {
        return isVIP;
    }

    public void setIsVIP(Long isVIP) {
        this.isVIP = isVIP;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Date getCreateOn() {
        return createOn;
    }

    public void setCreateOn(Date createOn) {
        this.createOn = createOn;
    }

    public Date getUpdateOn() {
        return updateOn;
    }

    public void setUpdateOn(Date updateOn) {
        this.updateOn = updateOn;
    }

    public Long getIsUnUse() {
        return isUnUse;
    }

    public void setIsUnUse(Long isUnUse) {
        this.isUnUse = isUnUse;
    }


}
