package Controller;

import Model.User;
import Service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by zhendu on 16/8/22.
 */
@Controller
@RequestMapping(value = "/loginController")
public class LoginController {
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/jump")
    public String showLogin(HttpSession httpSession) {

        //前台Session在使用get函数之前要在后台先看一下有没有这个值。可以使用isnew或者看看是不是null。
        if (httpSession.isNew() || httpSession.getAttribute("user") == null) {
            System.out.println("新用户");
            User user = new User();
            user.setUser_name("");
            user.setUser_pwd("");
            httpSession.setAttribute("otherDistrict" , 0);
            httpSession.setAttribute("user", user);
        }

        return "/login";
    }

    @RequestMapping(value = "userlogin" ,method = RequestMethod.POST)
    @ResponseBody
    public String userLogin(User user , HttpSession httpSession) {
        //首先将数据生成一个User对象
        System.out.println(user);

        //将这个用户存到session里面
        httpSession.setAttribute("user" , user);

        if (user.getUser_name() == null || user.getUser_pwd() == null || user.getUser_name().equals("") || user.getUser_pwd().equals("")){
            return "6";
        }

        //这里激活一个服务来进行用户的验证,返回1说明用户名密码完全正确,如果返回2说明用户名不存在,如果返回3说明密码不正确
        return loginService.login(user);
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession httpSession){
        if (httpSession.getAttribute("user")!=null){
            User user = new User();
            //清空session
            user.setUser_name("");
            user.setUser_pwd("");
            httpSession.setAttribute("user" , user);
        }

        return "/login";
    }
}
