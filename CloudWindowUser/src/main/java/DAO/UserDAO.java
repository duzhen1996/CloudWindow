package DAO;

import Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

/**
 * Created by zhendu on 16/8/23.
 */

@Repository
public class UserDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;//这个对象负责读一个对象出来

    @Autowired
    NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    //根据新的用户信息取出一个之前版本的用户,因为每一次登陆用户的信息都有更新
    public User getOldUserByNewUser(User user) {
        String sql = "SELECT user_id , user_name , user_pwd , user_lastregion , user_lastip , user_backup1 , user_backup2 FROM userinfo WHERE user_name = :user_name ";
        System.out.println(sql);

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);

        RowMapper<User> rowMapper = new BeanPropertyRowMapper<User>(User.class);

        try {
            return namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource , rowMapper);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    public User getOldUserByNewUserid(User user) {
        String sql = "SELECT user_id , user_name , user_pwd , user_lastregion , user_lastip , user_backup1 , user_backup2 FROM userinfo WHERE user_id = :user_id ";
        System.out.println(sql);

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);

        RowMapper<User> rowMapper = new BeanPropertyRowMapper<User>(User.class);

        try {
            return namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource , rowMapper);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    //这里更新一个用户的其他信息,更新成功返回true,失败返回false
    public boolean updateUser(User user) {
        String sql = "UPDATE userinfo SET user_lastip = :user_lastip , user_lastregion = :user_lastregion WHERE user_name = :user_name ";
        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);
        System.out.println(sql);
        try {
            namedParameterJdbcTemplate.update(sql,sqlParameterSource);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    //这个函数需要查看的是数据库中用户名和密码同时匹配的情况,主要用来验证一个用户是不是真是存在并且可以访问系统的
    public int getCountOfUserByUsernameAndPassword(User user) {
        String sql = "SELECT COUNT(*) FROM userinfo WHERE ( user_name = :user_name ) AND ( user_pwd = :user_pwd )";

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);

        //这里返回匹配的情况,如果返回-1那么就是服务器未知错误
        try {
            return namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource, Integer.class);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    //这个函数可以获取一个用户在数据库中出现的次数,查看是不是用户注册的用户名重复
    //这个函数只匹配用户名,不匹配密码
    public int getCountOfUser(User user) {
        String sql = "SELECT COUNT(*) FROM userinfo WHERE ( user_name = :user_name )";

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);

        try {
            return namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource, Integer.class);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    //这个函数可以添加一个用户,添加成功和失败分别是true和false
    public boolean addUser(User user) {
        String sql = "INSERT userinfo(user_name , user_pwd) VALUE(:user_name , :user_pwd)";

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);

        try {
            namedParameterJdbcTemplate.update(sql, sqlParameterSource);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }


}
