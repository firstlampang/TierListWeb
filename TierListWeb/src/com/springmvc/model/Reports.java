package com.springmvc.model;

import java.util.Date;

public class Reports {

	private String reportID;
	private String reportDetail;
	private Date reportDate;
	

	public Reports() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reports(String reportID, String reportDetail, Date reportDate) {
		super();
		this.reportID = reportID;
		this.reportDetail = reportDetail;
		this.reportDate = reportDate;
	}
	public String getReportID() {
		return reportID;
	}
	public void setReportID(String reportID) {
		this.reportID = reportID;
	}
	public String getReportDetail() {
		return reportDetail;
	}
	public void setReportDetail(String reportDetail) {
		this.reportDetail = reportDetail;
	}
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

}
