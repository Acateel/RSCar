package com.rscar.data_access;

import com.rscar.data_access.connection_pool.BasicConnectionPool;
import com.rscar.entity.Car;

import java.util.List;

public class CarDao extends BaseDao<Car>{

    protected CarDao(BasicConnectionPool connectionPool) {
        super(connectionPool);
    }

    @Override
    List<Car> findAll() throws DaoException {
        return null;
    }

    @Override
    Car findEntityById(int id) throws DaoException {
        return null;
    }

    @Override
    boolean delete(Car entity) throws DaoException {
        return false;
    }

    @Override
    boolean delete(int id) throws DaoException {
        return false;
    }

    @Override
    boolean create(Car entity) throws DaoException {
        return false;
    }
}
