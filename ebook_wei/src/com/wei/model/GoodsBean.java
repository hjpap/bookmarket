package com.wei.model;

public class GoodsBean {

	private String goods_id;
	private String type1_id;
	private String type2_id;
	private String goods_name="暂无该商品";
	private String producer;
	private String sn_number;
	private double cost_price=0.0;
	private double sale_price=0.0;
	private String pub_date;
	private String content="暂无该商品信息";
	private String add_date;
	private int goods_count=0;
	private int buy_count=0;
	private int read_count=0;
	private String image_file="none.jpg";
	private String tuijian;
	private int jifen=0;
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goodsId) {
		goods_id = goodsId;
	}
	public String getType1_id() {
		return type1_id;
	}
	public void setType1_id(String type1Id) {
		type1_id = type1Id;
	}
	public String getType2_id() {
		return type2_id;
	}
	public void setType2_id(String type2Id) {
		type2_id = type2Id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goodsName) {
		goods_name = goodsName;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public String getSn_number() {
		return sn_number;
	}
	public void setSn_number(String snNumber) {
		sn_number = snNumber;
	}
	public double getCost_price() {
		return cost_price;
	}
	public void setCost_price(double costPrice) {
		cost_price = costPrice;
	}
	public double getSale_price() {
		return sale_price;
	}
	public void setSale_price(double salePrice) {
		sale_price = salePrice;
	}
	public String getPub_date() {
		return pub_date;
	}
	public void setPub_date(String pubDate) {
		pub_date = pubDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAdd_date() {
		return add_date;
	}
	public void setAdd_date(String addDate) {
		add_date = addDate;
	}
	public int getGoods_count() {
		return goods_count;
	}
	public void setGoods_count(int goodsCount) {
		goods_count = goodsCount;
	}
	public int getBuy_count() {
		return buy_count;
	}
	public void setBuy_count(int buyCount) {
		buy_count = buyCount;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int readCount) {
		read_count = readCount;
	}
	public String getImage_file() {
		return image_file;
	}
	public void setImage_file(String imageFile) {
		image_file = imageFile;
	}
	public String getTuijian() {
		return tuijian;
	}
	public void setTuijian(String tuijian) {
		this.tuijian = tuijian;
	}
	public int getJifen() {
		return jifen;
	}
	public void setJifen(int jifen) {
		this.jifen = jifen;
	}
	
	
}
