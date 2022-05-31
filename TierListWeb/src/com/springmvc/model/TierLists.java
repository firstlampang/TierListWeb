package com.springmvc.model;

import java.util.Date;



public class TierLists {

	
	private String tierlistID;
	private String tierlistName;
	private Date tierlistDate;
	private String tierlistDesc;
	private String setImage;
	

	public TierLists() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TierLists(String tierlistID, String tierlistName, Date tierlistDate, String tierlistDesc, String setImage) {
		super();
		this.tierlistID = tierlistID;
		this.tierlistName = tierlistName;
		this.tierlistDate = tierlistDate;
		this.tierlistDesc = tierlistDesc;
		this.setImage = setImage;
	}

	public String getTierlistID() {
		return tierlistID;
	}
	public void setTierlistID(String tierlistID) {
		this.tierlistID = tierlistID;
	}
	public String getTierlistName() {
		return tierlistName;
	}
	public void setTierlistName(String tierlistName) {
		this.tierlistName = tierlistName;
	}
	public Date getTierlistDate() {
		return tierlistDate;
	}
	public void setTierlistDate(Date tierlistDate) {
		this.tierlistDate = tierlistDate;
	}
	public String getTierlistDesc() {
		return tierlistDesc;
	}
	public void setTierlistDesc(String tierlistDesc) {
		this.tierlistDesc = tierlistDesc;
	}
	public String getSetImage() {
		return setImage;
	}
	public void setSetImage(String setImage) {
		this.setImage = setImage;
	}

}
