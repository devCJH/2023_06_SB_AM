package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Article {
	private int id;
	private String regDate;
	private String updateDate;
	private int memberId;
	private String title;
	private String body;
	private int hitCnt;
	
	private String writerName;
	private int goodReactionPoint;
	private int badReactionPoint;
	private int sumReactionPoint;
	private boolean actorCanChangeData;
}
