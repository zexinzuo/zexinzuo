package com.bw.entity;

public class Torder {

	private String oid;
	private String oname;
	private String tel;
	private String tid;
	private String aid;
	private String fid;
	
	private Food food;
	private Address ad;
	private Time time;
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
	}
	public Address getAd() {
		return ad;
	}
	public void setAd(Address ad) {
		this.ad = ad;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Torder [oid=" + oid + ", oname=" + oname + ", tel=" + tel + ", tid=" + tid + ", aid=" + aid + ", fid="
				+ fid + ", food=" + food + ", ad=" + ad + ", time=" + time + "]";
	}

	
	
}
