package com.rscar.data_access;

import com.rscar.data_access.connection_pool.BasicConnectionPool;
import com.rscar.entity.User;

import java.util.List;

public class UserDao extends BaseDao<User>{
    protected UserDao(BasicConnectionPool connectionPool) {
        super(connectionPool);
    }

    @Override
    List<User> findAll() throws DaoException {
        return null;
    }

    @Override
    User findEntityById(int id) throws DaoException {
        return null;
    }

    @Override
    boolean delete(User entity) throws DaoException {
        return false;
    }

    @Override
    boolean delete(int id) throws DaoException {
        return false;
    }

    @Override
    boolean create(User entity) throws DaoException {
        return false;
    }

    @Override
    boolean update(User entity) throws DaoException {
        return false;
    }
}
