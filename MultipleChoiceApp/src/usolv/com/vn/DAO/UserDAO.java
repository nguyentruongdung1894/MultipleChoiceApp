package usolv.com.vn.DAO;

import java.util.List;

import usolv.com.vn.entitys.UserEntity;

public interface UserDAO {
	public List<UserEntity> GetAllUsers();

	public boolean DeleteUser(String userId);
	
	public boolean AddUser(UserEntity userEntity);
	
	public UserEntity GetUserByUserId(String userId);
	
	public boolean UpdateUser(UserEntity userEntity);
}
