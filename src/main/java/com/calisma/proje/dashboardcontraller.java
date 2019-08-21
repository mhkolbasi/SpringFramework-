package com.calisma.proje;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import package1.Dashb;

import package1.DB;


@Controller
public class dashboardcontraller {
	
	DB db = new DB();
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest req) {
	
		model.addAttribute("catData", catResult());
		model.addAttribute("tableData", tableResult());
		
		
		
		return Dashb.control(req, "dashboard");
		
		
	}
	
	public List<UsersCategories> catResult() {
		List<UsersCategories> uc = new ArrayList<UsersCategories>();
			try {
				String query = "select * from usercategories";
				PreparedStatement pree = db.connect(query);
				ResultSet rss = pree.executeQuery();
				while(rss.next()) {
					int uid = rss.getInt("uid");
					String utitle = rss.getString("utitle");
					
					UsersCategories ucc = new UsersCategories();
					ucc.setUid(uid);
					ucc.setUtitle(utitle);
					
					uc.add(ucc);
					
				}
			} catch (Exception e) {
				System.err.println("sql error : " + e);
			}
		return uc;
	}
	
	
	public List<UsersPro1> tableResult() {
		List<UsersPro1> ls = new ArrayList<UsersPro1>();
		try {
			String query = "SELECT * FROM user c INNER JOIN usercategories as ct ON c.uid = ct.uid ORDER by c.usid ASC";
			PreparedStatement pre = db.connect(query);
			ResultSet rs = pre.executeQuery();
			while(rs.next()) {
				UsersPro1 pr = new UsersPro1();
				pr.setUname(rs.getString("uname"));
				pr.setUphone(rs.getString("uphone"));
				pr.setUsid(rs.getInt("usid"));
				pr.setUsurname(rs.getString("usurname"));
				pr.setUtitle(rs.getString("utitle"));
				ls.add(pr);
			}
		} catch (Exception e) {
			System.err.println("tableResult error : " + e);
		}
		return ls;
	}	
	
}
