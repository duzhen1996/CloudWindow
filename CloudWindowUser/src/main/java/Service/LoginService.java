package Service;

import DAO.UserDAO;
import Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zhendu on 16/8/23.
 */
@Service
public class LoginService {
    @Autowired
    UserDAO userDAO;

    //返回5说明用户成功登陆,但是是异地登录
    public String login(User user) {
        //首先查看有没有这个用户
        int matchCountOfUserName = userDAO.getCountOfUser(user);

        if (matchCountOfUserName == 0) {
            //如果没有找到用户名那就直接返回2,这个值代表了这个错误
            return "2";
        } else {
            //现在去看看是不是用户名和密码同时匹配
            matchCountOfUserName = userDAO.getCountOfUserByUsernameAndPassword(user);
            if (matchCountOfUserName == 0) {
                //如果进到这里说明密码错误
                return "3";
            } else if (matchCountOfUserName == 1) {
                //这里说明用户通过人认证
                //如果通过了用户认证,那么就要使用DAO函数再更新一下IP和区域代码。
                //ip和区域必须同时不空才可以
                if (!(user.getUser_lastip() == 0 || user.getUser_lastregion() == "000000")) {
                    //首先取出旧版本的用户
                    User olduser = userDAO.getOldUserByNewUser(user);
                    //然后比较旧版本用户和新版本用户的region
                    //比较的前提是旧版本已经有一个ip和区域代码
                    if (olduser != null) {
                        if (!(olduser.getUser_lastregion().equals("") || olduser.getUser_lastip() == 0)) {
                            //这里就可以真正开始比较了
                            if (olduser.getUser_lastip() == user.getUser_lastip() && olduser.getUser_lastregion().equals(user.getUser_lastregion())) {
                                //进入这个函数说明一切正常,不是异地登陆,直接登陆成功
                                return "1";
                            } else {
                                //到达这里说明就是异地登录
                                //需要调用持久层的接口来更新用户的区域和ip
                                userDAO.updateUser(user);
                                return "5";
                            }
                        }else {
                            //如果一开始就发现没有记录ip和区域代码,那么就直接更新数据库
                            userDAO.updateUser(user);
                            return "1";
                        }
                    }
                }
                return "1";
            } else {
                //到这里说明服务器出现了未知错误
                return "4";
            }
        }
    }
}
