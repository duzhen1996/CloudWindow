package Model;

/**
 * Created by zhendu on 16/8/26.
 */
public class Node {
    private Integer node_id;
    private long node_ip;
    private String node_name;
    private Short node_core;
    private Integer node_memory;
    private Integer node_logicstorage;
    private Integer node_usedstorage;
    private Integer node_containernumber;
    private Integer node_backup1;
    private Integer node_backup2;

    public Node(Integer node_id, long node_ip, String node_name, Short node_core, Integer node_memory, Integer node_logicstorage, Integer node_usedstorage, Integer node_containernumber, Integer node_backup1, Integer node_backup2) {
        this.node_id = node_id;
        this.node_ip = node_ip;
        this.node_name = node_name;
        this.node_core = node_core;
        this.node_memory = node_memory;
        this.node_logicstorage = node_logicstorage;
        this.node_usedstorage = node_usedstorage;
        this.node_containernumber = node_containernumber;
        this.node_backup1 = node_backup1;
        this.node_backup2 = node_backup2;
    }

    public Node() {
    }

    public Integer getNode_id() {
        return node_id;
    }

    public void setNode_id(Integer node_id) {
        this.node_id = node_id;
    }

    public long getNode_ip() {
        return node_ip;
    }

    public void setNode_ip(long node_ip) {
        this.node_ip = node_ip;
    }

    public String getNode_name() {
        return node_name;
    }

    public void setNode_name(String node_name) {
        this.node_name = node_name;
    }

    public Short getNode_core() {
        return node_core;
    }

    public void setNode_core(Short node_core) {
        this.node_core = node_core;
    }

    public Integer getNode_memory() {
        return node_memory;
    }

    public void setNode_memory(Integer node_memory) {
        this.node_memory = node_memory;
    }

    public Integer getNode_logicstorage() {
        return node_logicstorage;
    }

    public void setNode_logicstorage(Integer node_logicstorage) {
        this.node_logicstorage = node_logicstorage;
    }

    public Integer getNode_usedstorage() {
        return node_usedstorage;
    }

    public void setNode_usedstorage(Integer node_usedstorage) {
        this.node_usedstorage = node_usedstorage;
    }

    public Integer getNode_containernumber() {
        return node_containernumber;
    }

    public void setNode_containernumber(Integer node_containernumber) {
        this.node_containernumber = node_containernumber;
    }

    public Integer getNode_backup1() {
        return node_backup1;
    }

    public void setNode_backup1(Integer node_backup1) {
        this.node_backup1 = node_backup1;
    }

    public Integer getNode_backup2() {
        return node_backup2;
    }

    public void setNode_backup2(Integer node_backup2) {
        this.node_backup2 = node_backup2;
    }

    @Override
    public String toString() {
        return "Node{" +
                "node_id=" + node_id +
                ", node_ip=" + node_ip +
                ", node_name='" + node_name + '\'' +
                ", node_core=" + node_core +
                ", node_memory=" + node_memory +
                ", node_logicstorage=" + node_logicstorage +
                ", node_usedstorage=" + node_usedstorage +
                ", node_containernumber=" + node_containernumber +
                ", node_backup1=" + node_backup1 +
                ", node_backup2=" + node_backup2 +
                '}';
    }
}
