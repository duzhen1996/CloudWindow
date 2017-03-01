package RestfulApi;

import com.fasterxml.jackson.databind.util.JSONPObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Calendar;

/**
 * Created by zhendu on 16/8/26.
 */
@RequestMapping(value = "/timeCalculate")
@Controller
public class TimeCalculate {
    @RequestMapping(value = "/getNearest7Day")
    @ResponseBody
    public JSONPObject getNearest7DayJson(String callbackparam) {
        System.out.println("收到来自于远端的跨域请求" + callbackparam);

        //获取当前时间
        Calendar now = Calendar.getInstance();

        //这个是最后要存储Json的字符串
        String resultJson = "[";

        resultJson = resultJson + "\"" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.DATE) + "\",";

        for (int i = 0; i < 6; i++) {
            now.add(Calendar.DAY_OF_YEAR, -1);
            resultJson = resultJson + "\"" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.DATE) + "\",";
        }

        resultJson = resultJson + "]";
        System.out.println(resultJson);

        return new JSONPObject(callbackparam , resultJson);
    }

}
