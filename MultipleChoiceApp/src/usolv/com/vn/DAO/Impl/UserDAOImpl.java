package usolv.com.vn.DAO.Impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import usolv.com.vn.DAO.UserDAO;
import usolv.com.vn.connectDB.SQLConnection;
import usolv.com.vn.entitys.UserEntity;

public class UserDAOImpl implements UserDAO {

	@Override
	public List<UserEntity> GetAllUsers() {
		List<UserEntity> listUsers = new ArrayList<UserEntity>();
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM TB_Admin WHERE STATUS = 1";
		try {
			conn = SQLConnection.getConnectionSqlServer();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				UserEntity user = new UserEntity();
				user.setAdminId(rs.getString("AdminId"));
				user.setPassword(rs.getString("Password"));
				user.setFullName(rs.getString("FullName"));
				user.setPhone(rs.getString("Phone"));
				user.setEmail(rs.getString("Email"));
				user.setAddress(rs.getString("Address"));
				user.setStatus(rs.getBoolean("Status"));
				listUsers.add(user);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stm.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listUsers;
	}
//	public static void main(String[] args) {
//		UserDAOImpl p = new UserDAOImpl();
//		List<UserEntity> listUsers = p .GetAllUsers();
//		for (UserEntity userEntity : listUsers) {
//			System.out.println(userEntity.getAdminId());
//		}
//	}
}
