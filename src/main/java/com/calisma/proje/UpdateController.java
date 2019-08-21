package com.calisma.proje;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import package1.DB;

@Controller
public class UpdateController {
	
		DB db = new DB();

		@RequestMapping(value = "/updatePage/{usid}", method = RequestMethod.GET)
		public String updatePage( @PathVariable int usid, Model model, HttpServletRequest req ) {
			req.getSession().setAttribute("usid", usid);
			model.addAttribute("tablePro", tableResult(usid));
			model.addAttribute("catData", new dashboardcontraller().catResult());
			System.out.println("crid : " + usid);
			return "update";
		}
		
		
		public UsersPro1 tableResult(int usid) {
			
			try {
				String query = "SELECT * FROM user c INNER JOIN usercategories as ct ON c.uid = ct.uid where c.usid = ?";
				PreparedStatement pre = db.connect(query);
				pre.setInt(1, usid);
				ResultSet rs = pre.executeQuery();
				if(rs.next()) {
					UsersPro1 up = new UsersPro1();
					up.setUname(rs.getString("uname"));
					up.setUphone(rs.getString("uphone"));
					up.setUsid(rs.getInt("usid"));
					up.setUsurname(rs.getString("usurname"));
					up.setUtitle(rs.getString("utitle"));
					up.setUid(rs.getInt("uid"));
					return up;
				}
			} catch (Exception e) {
				System.err.println("tableResult error : " + e);
			}
			return null;
		}
		
		@RequestMapping(value = "/cartUpdate", method = RequestMethod.POST)
		public String cartUpdate( UsersPro1 tbl, HttpServletRequest req ) {
			int usid = Integer.valueOf(""+req.getSession().getAttribute("usid"));
		
			 	try {
			 		String query = "update user set  uname = ?, usurname = ?, uphone = ?, uid = ? where usid = ? ";
			 		PreparedStatement pre = db.connect(query);
			 		pre.setString(1, tbl.getUname());
			 		pre.setString(2, tbl.getUsurname());
			 		pre.setString(3, tbl.getUphone());
			 		pre.setInt(4, tbl.getUid());
			 		pre.setInt(5, usid);
			 		pre.executeUpdate();
				} catch (Exception e) {
					System.err.println("Update error"+e);
				}	
			return "redirect:/dashboard";
		}
	}
