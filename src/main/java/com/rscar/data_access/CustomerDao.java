package com.rscar.data_access;

import com.rscar.data_access.connection_pool.BasicConnectionPool;
import com.rscar.entity.Customer;

import java.util.List;

public class CustomerDao extends BaseDao<Customer>{
    protected CustomerDao(BasicConnectionPool connectionPool) {
        super(connectionPool);
    }

    @Override
    List<Customer> findAll() throws DaoException {
        return null;
    }

    @Override
    Customer findEntityById(int id) throws DaoException {
        return null;
    }

    @Override
    boolean delete(Customer entity) throws DaoException {
        return false;
    }

    @Override
    boolean delete(int id) throws DaoException {
        return false;
    }

    @Override
    boolean create(Customer entity) throws DaoException {
        return false;
    }

    @Override
    boolean update(Customer entity) throws DaoException {
        return false;
    }
}
