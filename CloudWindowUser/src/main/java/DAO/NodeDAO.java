package DAO;

import Model.Node;
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
 * Created by zhendu on 16/8/27.
 */
@Repository
public class NodeDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;//这个对象负责读一个对象出来

    @Autowired
    NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public List<Node> getMinContainerNumberNode() {
        String sql = "SELECT * FROM nodeinfo WHERE node_containernumber = (SELECT MIN(node_containernumber) FROM nodeinfo)";

        System.out.println(sql);

        RowMapper rowMapper = new BeanPropertyRowMapper(Node.class);

        try {
            return namedParameterJdbcTemplate.query(sql, rowMapper);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}
