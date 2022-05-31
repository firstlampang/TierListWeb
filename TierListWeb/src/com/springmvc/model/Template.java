package com.springmvc.model;


public class Template {
	private String templateID;
	private String tempName;
	private String description;
	private String tempPhoto;
	private String credits;
	public Template() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Template(String templateID, String tempName, String description, String tempPhoto, String credits) {
		super();
		this.templateID = templateID;
		this.tempName = tempName;
		this.description = description;
		this.tempPhoto = tempPhoto;
		this.credits = credits;
	}

	public String getTemplateID() {
		return templateID;
	}
	public void setTemplateID(String templateID) {
		this.templateID = templateID;
	}
	public String getTempName() {
		return tempName;
	}
	public void setTempName(String tempName) {
		this.tempName = tempName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTempPhoto() {
		return tempPhoto;
	}
	public void setTempPhoto(String tempPhoto) {
		this.tempPhoto = tempPhoto;
	}
	public String getCredits() {
		return credits;
	}
	public void setCredits(String credits) {
		this.credits = credits;
	}

}
