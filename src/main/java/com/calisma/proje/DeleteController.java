package com.calisma.proje;

import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import package1.DB;

@Controller
public class DeleteController {
	DB db = new DB();
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.POST)
	public String delete(Model model,@PathVariable int id,HttpServletRequest req) {	
		
		try {
			String query="DELETE FROM `user` WHERE `user`.`usid` = ?"; 
			PreparedStatement pre=db.connect(query); 
			pre.setInt(1, id );  
			int st=pre.executeUpdate(); 
			if(st>0) {
				System.out.println("Silme islemi basarili");
			}
			else {
				System.out.println("Silme hatasý");
			}
		} catch (Exception e) {
		System.err.println("delete error: "+ e); 
		}
		return "redirect:/dashboard";
	}
	

}
