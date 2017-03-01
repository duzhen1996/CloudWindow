package Service;

import DAO.ContainerDAO;
import DAO.NodeDAO;
import Model.Container;
import Model.Node;
import Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhendu on 16/8/25.
 */
@Service
public class ContainerService {

    @Autowired
    private ContainerDAO containerDAO;

    @Autowired
    private NodeDAO nodeDAO;

    public List<Container> getAllContainerInformation(User user) {
        //首先先获取这个id的容器的数量
        Integer containerCount = containerDAO.getCountOfContainerByUser(user);

        //看看这个用户的容器数量是不是0
        if (containerCount == 0) {
            //如果容器数量是0,那么就直接返回一个空的数组对象
            return new ArrayList<Container>();
        } else if (containerCount == -1) {
            System.out.println("数据库读取出错");
            return new ArrayList<Container>();
        } else {
            List<Container> resultArray = containerDAO.getAllContainerByUser(user);
            System.out.println(resultArray);
            return resultArray;
        }
    }

    public Boolean containerAddTask(Container container) {
        //首先查看这个容器的名字有没有和用户的其他容器名字重复




        //首先这里找一个容器数量最小的服务器
        Node node = nodeDAO.getMinContainerNumberNode().get(0);

        System.out.println("==========================================");

        System.out.println(node);

        //这里创建一个socket,和服务器端进行通信。
        //使用节点的ip来进行socket连接
        //将IP转化为字符串
        Long ip = node.getNode_ip();
        System.out.println(ip);

        //在这里进行IP和地址之间的转化
        //首先是最低位
        Long num1 =ip % 256;
        ip = ip - num1;
        ip = ip / 256;

        Long num2 = ip % 256;
        ip = ip - num2;
        ip = ip / 256;

        Long num3 = ip % 256;
        ip = ip - num3;
        ip = ip / 256;

        String ipStr = "" + ip + "." + num3 + "." + num2 + "." + num1;

        System.out.println(ipStr);

        try {
            Socket socket = new Socket( "127.0.0.1" , 50007 );
            Socket

        } catch (IOException e) {
            e.printStackTrace();
        }

        //在这里将container信息写入数据库
        container.setContainer_cid("");
        container.setContainer_status(0);
        container.setContainer_portid(8000);
//        container.setContainer_backup1(0);
//        container.setContainer_backup2(0);
        container.setContainer_nodeid(node.getNode_id());
//        container.setContainer_core(1);

        return containerDAO.addContainer(container);
    }
}
