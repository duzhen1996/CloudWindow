package Controller;

import Model.User;
import Service.SignUpService;
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
@RequestMapping(value = "/signUpController")
public class SignUpController {

    @Autowired
    private SignUpService signUpService;


    //跳转到登录界面的处理
    @RequestMapping(value = "/jump")
    public String showSignUp() {
        return "/signUp";
    }

    //注册ajax请求的处理
    @RequestMapping(value = "/signUp" , method = RequestMethod.POST)
    @ResponseBody
    public String signUp(User user , HttpSession httpSession){

        if (user.getUser_name() == null || user.getUser_pwd() == null || user.getUser_name().equals("") || user.getUser_pwd().equals("")){
            return "6";
        }

        //将这个用户存到session里面
        httpSession.setAttribute("user" , user);
        //这里激活一个服务,用来处理用户的注册事项
        return signUpService.SignUp(user);
    }
}
