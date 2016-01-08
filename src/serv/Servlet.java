package serv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import serv.*;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Servlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ses = request.getSession();
		//取得要進行哪個執行的動作
		String pageName =(String)request.getParameter("pageName");
		String address = null;  //跳轉的頁面位址


		/*------------------------登入/登出--------------------*/
		if(pageName.equals("login")){
			Register register = new Register();

			String account = request.getParameter("account");  //取得login.jsp的account  
			String password = request.getParameter("password"); //取得login.jsp的password 
			
			String checkLogin = "";
			ses.setAttribute("checkAccount", null);
			try {
				//用Register.java內的CheckLogin方法判斷是否成功
				checkLogin = register.CheckLogin(account, password); //確認資料庫(資料表:student)是否有此筆帳密

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(checkLogin.equals("登入成功")){
				ses.setAttribute("checkAccount", "true");
				ses.setAttribute("account", account);
				ses.setAttribute("password", password);
				try {
					//將使用者 id、name、account 設成屬性，方便之後運用
					Register r1 = new Register();
					ses.setAttribute("account", account); 
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				address = "home.jsp";//如果登入成功進到首頁
			}
			else{
				address = "login.jsp";//如果登入失敗，回到login頁面
			}
			RequestDispatcher dispatcher =request.getRequestDispatcher(address);
			dispatcher.forward(request, response);

		}
		
		
	}

}
