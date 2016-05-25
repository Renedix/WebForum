package test;

import domain.dao.interfaces.CategoryDAO;
import domain.dao.interfaces.PostDAO;
import domain.dao.interfaces.TopicDao;
import domain.dao.jdbc.CategoryJdbcDAO;
import domain.dao.jdbc.PostJdbcDAO;
import domain.dao.jdbc.ThreadJdbcDAO;
import domain.dao.jdbc.TopicJdbcDAO;

import java.sql.SQLException;

/**
 * Created with IntelliJ IDEA.
 * User: New
 * Date: 02/02/13
 * Time: 21:29
 * To change this template use File | Settings | File Templates.
 */
public class DAOTest {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        PostJdbcDAO postJdbcDAO = new PostJdbcDAO();
            postJdbcDAO.setPostContent(38,"this is new content for a post test");
    }
}
