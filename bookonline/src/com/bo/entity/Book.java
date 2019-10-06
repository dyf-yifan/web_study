package com.bo.entity;

/**
 * @author ding
 * @ClassaName book
 * @Despription 图书实体类
 * @Date 2019/10/1
 * @Version 1.0
 **/
public class Book {
    private Integer id;
    private String name;
    private String cover;
    private String author;
    private String briefintroduction;

    public Book(Integer id, String name, String cover, String author,String briefintroduction) {
        this.id = id;
        this.name = name;
        this.cover = cover;
        this.author = author;
        this.briefintroduction=briefintroduction;
    }

    public Book() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBriefintroduction() {
        return briefintroduction;
    }

    public void setBriefintroduction(String briefintroduction) {
        this.briefintroduction = briefintroduction;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                ", author='" + author + '\'' +
                ", briefintroduction='" + briefintroduction + '\'' +
                '}';
    }
}
