package com.ualbany.daneeats.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class Persistable {

    private Long id;
    private User createdBy;
    private User updatedBy;
    private Date updatedAt;
    private Date createdAt;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "createdBy")
    public User getCreatedBy() {
        return createdBy;

    }

    public void setUpdatedBy(User updatedBy) {
        this.updatedBy = updatedBy;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "updatedBy")
    public User getUpdatedBy() {
        return updatedBy;
    }

    @Column(nullable = false)
    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Column(nullable = false)
    public Date getUpdatedAt() {
        return updatedAt;
    }
}