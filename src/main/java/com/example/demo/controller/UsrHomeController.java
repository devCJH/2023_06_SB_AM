package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Controller
public class UsrHomeController {
	
	int cnt;
	
	UsrHomeController() {
		this.cnt = -100;
	}
	
	@RequestMapping("/usr/home/main")
	@ResponseBody
	public String showMain() {
		return "안녕하세요";
	}
	
	@RequestMapping("/usr/home/test1")
	@ResponseBody
	public int showMain1() { 
		return cnt++;
	}
	
	@RequestMapping("/usr/home/test2")
	@ResponseBody
	public double showMain2() { 
		return 3.3 + 1.2;
	}
	
	@RequestMapping("/usr/home/test3")
	@ResponseBody
	public List<String> showMain3() { 
		
		List<String> list = new ArrayList<>();
		
		list.add("a");
		list.add("b");
		list.add("c");
		
		return list;
	}
	
	@RequestMapping("/usr/home/test4")
	@ResponseBody
	public Map<String, Object> showMain4() { 
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("a", 1);
		map.put("b", "이");
		map.put("c", 33);
		
		return map;
	}
	
	@RequestMapping("/usr/home/test5")
	@ResponseBody
	public Article showMain5() { 
		
		Article article = new Article();
		
		article.setId(1);
		article.setTitle("asd");
	
		return article;
	}
	
	@RequestMapping("/usr/home/test6")
	@ResponseBody
	public List<Article> showMain6() { 
		
		List<Article> articles = new ArrayList<>();
		
		for(int i = 0; i < 3; i++) {
			Article article = new Article(i, "qwe" + i);
			
			articles.add(article);
		}
		return articles;
	}
}

@Data
@NoArgsConstructor
@AllArgsConstructor
class Article {
	private int id;
	private String title;
}