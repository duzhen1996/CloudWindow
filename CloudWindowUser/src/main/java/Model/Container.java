package Model;

/**
 * Created by zhendu on 16/8/24.
 */
public class Container {
    private Integer container_id;
    private String container_name;
    private String container_cid;
    private Integer container_nodeid;
    private Integer container_userid;
    private Integer container_portid;
    private Integer container_core;
    private Integer container_performance;
    private Integer container_memory;
    private Integer container_storage;
    private Integer container_resolution;
    private Integer container_status;
    private Integer container_backup1;
    private Integer container_backup2;

    public Container(Integer container_id, String container_name, String container_cid, Integer container_nodeid, Integer container_userid, Integer container_portid, Integer container_core, Integer container_performance, Integer container_memory, Integer container_storage, Integer container_resolution, Integer container_status, Integer container_backup1, Integer container_backup2) {
        this.container_id = container_id;
        this.container_name = container_name;
        this.container_cid = container_cid;
        this.container_nodeid = container_nodeid;
        this.container_userid = container_userid;
        this.container_portid = container_portid;
        this.container_core = container_core;
        this.container_performance = container_performance;
        this.container_memory = container_memory;
        this.container_storage = container_storage;
        this.container_resolution = container_resolution;
        this.container_status = container_status;
        this.container_backup1 = container_backup1;
        this.container_backup2 = container_backup2;
    }

    public Container() {
    }

    public Integer getContainer_id() {
        return container_id;
    }

    public void setContainer_id(Integer container_id) {
        this.container_id = container_id;
    }

    public String getContainer_name() {
        return container_name;
    }

    public void setContainer_name(String container_name) {
        this.container_name = container_name;
    }

    public String getContainer_cid() {
        return container_cid;
    }

    public void setContainer_cid(String container_cid) {
        this.container_cid = container_cid;
    }

    public Integer getContainer_nodeid() {
        return container_nodeid;
    }

    public void setContainer_nodeid(Integer container_nodeid) {
        this.container_nodeid = container_nodeid;
    }

    public Integer getContainer_userid() {
        return container_userid;
    }

    public void setContainer_userid(Integer container_userid) {
        this.container_userid = container_userid;
    }

    public Integer getContainer_portid() {
        return container_portid;
    }

    public void setContainer_portid(Integer container_portid) {
        this.container_portid = container_portid;
    }

    public Integer getContainer_core() {
        return container_core;
    }

    public void setContainer_core(Integer container_core) {
        this.container_core = container_core;
    }

    public Integer getContainer_performance() {
        return container_performance;
    }

    public void setContainer_performance(Integer container_performance) {
        this.container_performance = container_performance;
    }

    public Integer getContainer_memory() {
        return container_memory;
    }

    public void setContainer_memory(Integer container_memory) {
        this.container_memory = container_memory;
    }

    public Integer getContainer_storage() {
        return container_storage;
    }

    public void setContainer_storage(Integer container_storage) {
        this.container_storage = container_storage;
    }

    public Integer getContainer_resolution() {
        return container_resolution;
    }

    public void setContainer_resolution(Integer container_resolution) {
        this.container_resolution = container_resolution;
    }

    public Integer getContainer_status() {
        return container_status;
    }

    public void setContainer_status(Integer container_status) {
        this.container_status = container_status;
    }

    public Integer getContainer_backup1() {
        return container_backup1;
    }

    public void setContainer_backup1(Integer container_backup1) {
        this.container_backup1 = container_backup1;
    }

    public Integer getContainer_backup2() {
        return container_backup2;
    }

    public void setContainer_backup2(Integer container_backup2) {
        this.container_backup2 = container_backup2;
    }

    @Override
    public String toString() {
        return "Container{" +
                "container_id=" + container_id +
                ", container_name='" + container_name + '\'' +
                ", container_cid='" + container_cid + '\'' +
                ", container_nodeid=" + container_nodeid +
                ", container_userid=" + container_userid +
                ", container_portid=" + container_portid +
                ", container_core=" + container_core +
                ", container_performance=" + container_performance +
                ", container_memory=" + container_memory +
                ", container_storage=" + container_storage +
                ", container_resolution=" + container_resolution +
                ", container_status=" + container_status +
                ", container_backup1=" + container_backup1 +
                ", container_backup2=" + container_backup2 +
                '}';
    }
}
