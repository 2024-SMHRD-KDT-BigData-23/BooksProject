package com.smhrd.model;

public class SeatVO {

	private int SEAT_ID;
	private int SHTL_ID;
	private int SEAT_NUM;
	private String SEAT_STATUS;
	private int EVENT_ID;
	
	
	
	
	
	
	
	
	
	
	
	public SeatVO(int SEAT_ID, int SHTL_ID, int SEAT_NUM, String SEAT_STATUS, int EVENT_ID) {
		this.SEAT_ID = SEAT_ID;
		this.SHTL_ID = SHTL_ID;
		this.SEAT_NUM = SEAT_NUM;
		this.SEAT_STATUS = SEAT_STATUS;
		 this.EVENT_ID = EVENT_ID;
	}
	public SeatVO(int SEAT_ID, int SHTL_ID, int SEAT_NUM, String SEAT_STATUS) {
		this.SEAT_ID = SEAT_ID;
		this.SHTL_ID = SHTL_ID;
		this.SEAT_NUM = SEAT_NUM;
		this.SEAT_STATUS = SEAT_STATUS;
	}
	public int getSEAT_ID() {
		return SEAT_ID;
	}
	public void setSEAT_ID(int sEAT_ID) {
		SEAT_ID = sEAT_ID;
	}
	public int getSHTL_ID() {
		return SHTL_ID;
	}
	public void setSHTL_ID(int sHTL_ID) {
		SHTL_ID = sHTL_ID;
	}
	public int getSEAT_NUM() {
		return SEAT_NUM;
	}
	public void setSEAT_NUM(int sEAT_NUM) {
		SEAT_NUM = sEAT_NUM;
	}
	public String getSEAT_STATUS() {
		return SEAT_STATUS;
	}
	public void setSEAT_STATUS(String sEAT_STATUS) {
		SEAT_STATUS = sEAT_STATUS;
	}
	
	
	
	
}