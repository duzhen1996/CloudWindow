package Service;

import DAO.ContainerDAO;
import DAO.UserDAO;
import Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zhendu on 16/8/24.
 */
@Service
public class UserOverviewService {
    @Autowired
    private UserDAO userDAO;

    @Autowired
    private ContainerDAO containerDAO;

    public User getaUserFromDataBase(User user) {
        //判断应该使用userid还是name
        if (user.getUser_name() != "" && user.getUser_name() != null) {
            //这里把数据库中的user取出来
            User allUserInformation = userDAO.getOldUserByNewUser(user);

            return allUserInformation;
        } else if ( user.getUser_id() != 0 ) {
            //如果没有找到,那就在下面的这个函数中找一个用户
            User allUserInformation = userDAO.getOldUserByNewUserid(user);

            return allUserInformation;
        }

        return null;
    }

    public Integer getContainerNumberFromDataBaseByUser(User user) {
        Integer resultnumber = containerDAO.getCountOfContainerByUser(user);

        if (resultnumber == -1) {
            System.out.println("在" + user + "获取container个数的时候在ContainerDAO失败");
            return 0;
        }

        return resultnumber;
    }
}
