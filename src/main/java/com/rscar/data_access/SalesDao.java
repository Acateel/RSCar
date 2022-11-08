package com.rscar.data_access;

import com.rscar.data_access.connection_pool.BasicConnectionPool;
import com.rscar.entity.Sales;

import java.util.List;

public class SalesDao extends BaseDao<Sales>{
    protected SalesDao(BasicConnectionPool connectionPool) {
        super(connectionPool);
    }

    @Override
    List<Sales> findAll() throws DaoException {
        return null;
    }

    @Override
    Sales findEntityById(int id) throws DaoException {
        return null;
    }

    @Override
    boolean delete(Sales entity) throws DaoException {
        return false;
    }

    @Override
    boolean delete(int id) throws DaoException {
        return false;
    }

    @Override
    boolean create(Sales entity) throws DaoException {
        return false;
    }

    @Override
    boolean update(Sales entity) throws DaoException {
        return false;
    }
}
