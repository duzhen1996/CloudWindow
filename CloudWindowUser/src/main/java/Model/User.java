package Model;

/**
 * Created by zhendu on 16/8/22.
 */
public class User {
    private int user_id;
    private String user_name;
    private String user_pwd;
    private String user_lastregion;
    private long user_lastip;
    private int user_backup1;
    private int user_backup2;

    public User(int user_id, String user_name, String user_pwd, String user_lastregion, long user_lastip, int user_backup1, int user_backup2) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_pwd = user_pwd;
        this.user_lastregion = user_lastregion;
        this.user_lastip = user_lastip;
        this.user_backup1 = user_backup1;
        this.user_backup2 = user_backup2;
    }

    public User() {
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }

    public String getUser_lastregion() {
        return user_lastregion;
    }

    public void setUser_lastregion(String user_lastregion) {
        this.user_lastregion = user_lastregion;
    }

    public long getUser_lastip() {
        return user_lastip;
    }

    public void setUser_lastip(long user_lastip) {
        this.user_lastip = user_lastip;
    }

    public int getUser_backup1() {
        return user_backup1;
    }

    public void setUser_backup1(int user_backup1) {
        this.user_backup1 = user_backup1;
    }

    public int getUser_backup2() {
        return user_backup2;
    }

    public void setUser_backup2(int user_backup2) {
        this.user_backup2 = user_backup2;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", user_pwd='" + user_pwd + '\'' +
                ", user_lastregion='" + user_lastregion + '\'' +
                ", user_lastip=" + user_lastip +
                ", user_backup1=" + user_backup1 +
                ", user_backup2=" + user_backup2 +
                '}';
    }
}
