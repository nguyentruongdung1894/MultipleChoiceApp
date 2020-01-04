package usolv.com.vn.DAO.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import usolv.com.vn.DAO.CategoryDAO;
import usolv.com.vn.connectDB.SQLConnection;

public class CategoryDAOImpl implements CategoryDAO {

	@Override
	public String GetCategoryById(String categoryId) {
		String categoryName = null;
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "select CategoryName from TB_Category where CategoryId = ?";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, categoryId);
			rs = pstm.executeQuery();
			while (rs.next()) {
				categoryName = rs.getString("CategoryName");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return categoryName;
	}
}
