package com.calisma.proje;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import package1.DB;

@Controller
public class HomeController {
	
		DB db = new DB();
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
		
		return "home";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String umail, @RequestParam String upassword, HttpServletRequest req) {
	
		Useraccount ac = new Useraccount();
		
		try {
			
		String query= "Select * from  `useraccount`";
		PreparedStatement pr = db.connect(query);
		ResultSet rs = pr.executeQuery();
		
		while(rs.next()) {
			ac.setUid(rs.getInt("uid"));
			ac.setUmail(rs.getString("umail"));
			ac.setUpassword(rs.getString("upassword"));
			
		}
			
			System.out.println("Giris basarili !!");
		} catch (Exception e) {
			System.err.println("Giris Hatasý : " + e);
		}
		
		
		if(umail.equals(ac.getUmail()) && upassword.equals(ac.getUpassword())) 
		{
			// session create
			
			req.getSession().setAttribute("user_id", 10);
			return "redirect:/dashboard";
			
			// mail:muhammed@kolbasi.com
			// sifre:asdf
			
		}
			
		return "redirect:/";
	}
	
	@RequestMapping(value = "/cartInsert", method = RequestMethod.POST)
	public String cartInsert(Users us) {
		try {
			String query = "INSERT INTO `user` (`usid`, `uname`, `usurname`, `uphone`, `uid`) VALUES (NULL, ?, ?, ?, ?)";
			PreparedStatement pre = db.connect(query);
			pre.setString(1,us.getUname());
			pre.setString(2, us.getUsurname());
			pre.setString(3, us.getUphone());
			pre.setInt(4, us.getUid());
			pre.executeUpdate();
			System.out.println("Kayit eklendi !");
			
		} catch (Exception e) {
			System.err.println("insert hatasý : " + e);
		}
		return "redirect:/dashboard";
	}
	
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletRequest req) {
		
		req.getSession().removeAttribute("user_id");
		req.getSession().invalidate(); // tüm oturumlarý kapat
		return "redirect:/";
	}
	

}
	
	

