package com.seckillproject.controller.viewobject;


import java.math.BigDecimal;

public class ItemVO {
    private Integer id;

    // 商品名称
    private String title;

    // 商品价格
    private BigDecimal price;

    // 商品的库存
    private Integer stock;

    // 商品的描述
    private String description;

    // 商品的销量
    private Integer sales;

    //商品描述图片的url
    private String imgUrl;

    // 记录商品是否在秒杀活动中，0：没有秒杀活动 1：秒杀活动待开始 2：秒杀活动进行中
    private Integer promoStatus;

    // 秒杀活动价格
    private BigDecimal promoPrice;

    // 秒杀活动ID
    private Integer promoId;

    // 秒杀活动开始时间
    private String startDate;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPromoStatus() {
        return promoStatus;
    }

    public void setPromoStatus(Integer promoStatus) {
        this.promoStatus = promoStatus;
    }

    public BigDecimal getPromoPrice() {
        return promoPrice;
    }

    public void setPromoPrice(BigDecimal promoPrice) {
        this.promoPrice = promoPrice;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public Integer getPromoId() {
        return promoId;
    }

    public void setPromoId(Integer promoId) {
        this.promoId = promoId;
    }
}
