package com.bw.entity;

public class Time {

	private String tid;
	private String tname;
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	@Override
	public String toString() {
		return "Time [tid=" + tid + ", tname=" + tname + "]";
	}
	
	
}
