package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zhendu on 16/8/22.
 */
@Controller
@RequestMapping(value = "/theIndexController")
public class TheIndexController {

    @RequestMapping(value = "/jump")
    public String showTheIndex(){
        return "/theIndex";
    }

    @RequestMapping(value = "/about")
    public String showAbout(){
        return "/about";
    }
}



