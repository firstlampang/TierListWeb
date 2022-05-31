package com.springmvc.model;



public class Categorys {

	private String categoryID;
	private String categoryName;
	private String categoryImage;


	public Categorys() {
		super();
	}

	public Categorys(String categoryID, String categoryName, String categoryImage) {
		super();
		this.categoryID = categoryID;
		this.categoryName = categoryName;
		this.categoryImage = categoryImage;
	}


	public String getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryImage() {
		return categoryImage;
	}
	public void setCategoryImage(String categoryImage) {
		this.categoryImage = categoryImage;
	}

}
