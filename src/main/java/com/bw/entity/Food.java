package com.bw.entity;

public class Food {

	private String fid;
	private String fname;
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	@Override
	public String toString() {
		return "Food [fid=" + fid + ", fname=" + fname + "]";
	}
	
	
}
