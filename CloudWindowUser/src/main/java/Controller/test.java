package Controller;

import com.fasterxml.jackson.databind.util.JSONPObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by zhendu on 16/8/27.
 */
@Controller
@RequestMapping(value = "test")
public class test {
    @RequestMapping(value = "jump")
    public String show() {
        return "/test";
    }

    @RequestMapping(value = "testJsonp")
    @ResponseBody
    public JSONPObject testJsonp(HttpServletRequest req, HttpServletResponse res, String callbackparam) {
//        res.setContentType("text/plain");

//        String callbackFunName =req.getParameter("callbackparam");//得到js函数名称  
        String callbackFunName = callbackparam;

        ArrayList<String> arrayList= new ArrayList<String>();

        arrayList.add("1");
        arrayList.add("2");
        arrayList.add("3");

        return new JSONPObject(callbackFunName , "[\'1\', \'2\', \'3\']");
//
//        return callbackFunName + "([ { name:\"John\"}])";

    }
}
