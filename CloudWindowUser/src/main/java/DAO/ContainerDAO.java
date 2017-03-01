package DAO;

import Model.Container;
import Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zhendu on 16/8/24.
 */
@Repository
public class ContainerDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;//这个对象负责读一个对象出来

    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;


    public boolean addContainer(Container container) {
        String sql = "INSERT INTO containerinfo(container_name , container_cid , container_nodeid , container_userid , container_portid , " +
                " container_core , container_performance , container_memory , container_storage , container_resolution , container_status , " +
                " container_backup1 , container_backup2 ) VALUE(:container_name , :container_cid , :container_nodeid , :container_userid , " +
                " :container_portid , :container_core , :container_performance , :container_memory , :container_storage , :container_resolution , " +
                " :container_status , :container_backup1 , :container_backup2 )";

        System.out.println(sql);

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(container);

        try {
            namedParameterJdbcTemplate.update(sql, sqlParameterSource);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    //返回-1代表取值失败,其他值说明取成功了
    public Integer getCountOfContainerByUser(User user) {

        String sql = "SELECT COUNT(*) FROM containerinfo WHERE ( container_userid = :user_id )";

        System.out.println(sql);

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);

        try {
            return namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource, Integer.class);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    //获取一个数组,这个数组的包含了一系列Container对象
    public List<Container> getAllContainerByUser(User user) {
        System.out.println(user);

        String sql = "SELECT container_id ,container_name , container_cid , container_nodeid , container_userid , container_portid , " +
                " container_core , container_performance , container_memory , container_storage , container_resolution , container_status , " +
                " container_backup1 , container_backup2 FROM containerinfo WHERE container_userid = :user_id";

        System.out.println(sql);

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(user);

        RowMapper<Container> rowMapper = new BeanPropertyRowMapper<Container>(Container.class);


        try {
            return namedParameterJdbcTemplate.query(sql, sqlParameterSource, rowMapper);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
