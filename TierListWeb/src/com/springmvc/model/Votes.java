package com.springmvc.model;

public class Votes {

	private String voteID;
	private String voteName;
	private int countVote;
	
	public Votes() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Votes(String voteID, String voteName, int countVote) {
		super();
		this.voteID = voteID;
		this.voteName = voteName;
		this.countVote = countVote;
	}

	public String getVoteID() {
		return voteID;
	}
	public void setVoteID(String voteID) {
		this.voteID = voteID;
	}
	public String getVoteName() {
		return voteName;
	}
	public void setVoteName(String voteName) {
		this.voteName = voteName;
	}
	public int getCountVote() {
		return countVote;
	}
	public void setCountVote(int countVote) {
		this.countVote = countVote;
	}

}
