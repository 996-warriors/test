package servlet;

import java.io.IOException;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import java.sql.SQLException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import productList.Product;
import productList.sql;

/**
 * Servlet implementation class FindServlet
 */
@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				sql q = new sql("oracle.jdbc.driver.OracleDriver","jdbc:oracle:thin:@192.168.153.129:1521:SPORTDB",
		                "qiang","Admin147258");
				System.out.println("===="+q);
				q.ConnectData();
				
				String sql = "select * from product";
				ResultSet rs = q.GetResultSet(sql);
				List<Product> list = new ArrayList<Product>();
				while(rs.next()){
					Product product = new Product();
					product.setID(rs.getString("ID"));
					product.setDescrption(rs.getString("Descrption"));
					product.setType(rs.getString("type"));
					product.setName(rs.getString("Name"));
					product.setNumber(rs.getInt("number"));
					product.setPicturepath(rs.getString("picturepath"));
					list.add(product);
				}
				request.setAttribute("list", list);
				rs.close();
				q.CloseConnect();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}catch(SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("shortcodes.jsp").forward(request, response);
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
