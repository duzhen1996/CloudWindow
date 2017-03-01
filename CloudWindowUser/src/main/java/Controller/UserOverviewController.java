package Controller;

import Model.User;
import Service.UserOverviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by zhendu on 16/8/24.
 */
@Controller
@RequestMapping(value = "/userOverviewController")
public class UserOverviewController {
    @Autowired
    private UserOverviewService userOverviewService;


    @RequestMapping(value = "/jump_{otherDistrict}")
    public String showTheOverview(HttpSession httpSession, Model model, @PathVariable Integer otherDistrict) {
        //我们在这里要调用一个用户的全部信息,信息从session取得。
        if (httpSession.getAttribute("user") != null) {
            User user = (User) httpSession.getAttribute("user");
            //这里查看用户的全部信息
            user = userOverviewService.getaUserFromDataBase(user);
            model.addAttribute("user", user);
            //这里可以调用服务获取一个容器的数量
            model.addAttribute("containerCount", userOverviewService.getContainerNumberFromDataBaseByUser(user));
        }

        model.addAttribute("otherDistrict", otherDistrict);

        return "/useroverview";
    }
}
