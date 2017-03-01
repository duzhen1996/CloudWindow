package Controller;

import Model.Container;
import Model.User;
import Service.ContainerService;
import Service.UserOverviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zhendu on 16/8/25.
 */
@Controller
@RequestMapping(value = "/containerController")
public class ContainerController {
    @Autowired
    private ContainerService containerService;

    @Autowired
    private UserOverviewService userOverviewService;

    @RequestMapping(value = "/jump_{userid}_{otherDistrict}")
    public String showTheContainer(@PathVariable Integer userid, Model model , @PathVariable Integer otherDistrict , HttpSession httpSession) {
        User user = new User();
        user.setUser_id(userid);

        //获取用户的基本信息
        user = userOverviewService.getaUserFromDataBase(user);

        //这个节点的所有容器要获取出来
        List<Container> allContainer = containerService.getAllContainerInformation(user);

        model.addAttribute("allContainerInformation", allContainer);

        model.addAttribute("user", user);

        model.addAttribute("otherDistrict" , otherDistrict);

        return "/userUsage";
    }

    @RequestMapping(value = "/containerAdd")
    @ResponseBody
    public String addContainer(Container container , HttpSession httpSession){
        System.out.println(container);

        if (containerService.containerAddTask(container) == true){
            return "1";
        }else {
            return "2";
        }
    }
}
