package package1;

import javax.servlet.http.HttpServletRequest;

public class Dashb {
public static String control(HttpServletRequest req, String page) {
		
		boolean statu = req.getSession().getAttribute("user_id") != null;
		
		
		if(statu) {
			return page;
		}
		
		return "redirect:/";
	}
	

}
