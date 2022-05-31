package com.springmvc.model;


public class Photos {
	
	private String photosID;
	private String photosName;
	

	public Photos() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Photos(String photosID, String photosName) {
		super();
		this.photosID = photosID;
		this.photosName = photosName;
	}
	public String getPhotosID() {
		return photosID;
	}
	public void setPhotosID(String photosID) {
		this.photosID = photosID;
	}
	public String getPhotosName() {
		return photosName;
	}
	public void setPhotosName(String photosName) {
		this.photosName = photosName;
	}

}
