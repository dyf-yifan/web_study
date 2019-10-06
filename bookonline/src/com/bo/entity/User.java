package com.bo.entity;
import java.time.LocalDate;
/**
 * @author ding
 * @ClassaName User
 * @Despription 用户实体类
 * @Date 2019/10/1
 * @Version 1.0
 **/
public class User {
    private  Integer id;
    private  String account;
    private  String password;
    private  String nickname;
    private  String avater;
    private  String address;
    private  LocalDate joinDate;

    public User(Integer id, String account, String password, String nickname, String avater, String address, LocalDate joinDate) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.nickname = nickname;
        this.avater = avater;
        this.address = address;
        this.joinDate = joinDate;
    }

    public User() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getAvater() {
        return avater;
    }

    public void setAvater(String avater) {
        this.avater = avater;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public LocalDate getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(LocalDate joinDate) {
        this.joinDate = joinDate;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", nickname='" + nickname + '\'' +
                ", avater='" + avater + '\'' +
                ", address='" + address + '\'' +
                ", joinDate=" + joinDate +
                '}';
    }
}
