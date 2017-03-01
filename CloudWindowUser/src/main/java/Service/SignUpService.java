package Service;

import DAO.UserDAO;
import Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zhendu on 16/8/22.
 */
@Service
public class SignUpService {

    @Autowired
    UserDAO userDAO;

    //返回一个错误代码,1代表注册成功,0代表用户名重复,2代表查询过程中发生了未知错误
    public String SignUp(User user) {
        //首先查看这个这个用户名在表中是不是出现了
        int resultNumber = userDAO.getCountOfUser(user);
        if (resultNumber == 0) {
            if (userDAO.addUser(user)) {
                return "1";
            } else {
                return "2";
            }
        } else if (resultNumber == -1){
            return "2";
        }
        return "0";
    }

}
