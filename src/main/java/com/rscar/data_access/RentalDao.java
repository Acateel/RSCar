package com.rscar.data_access;

import com.rscar.data_access.connection_pool.BasicConnectionPool;
import com.rscar.entity.Rental;

import java.util.List;

public class RentalDao extends BaseDao<Rental> {
    protected RentalDao(BasicConnectionPool connectionPool) {
        super(connectionPool);
    }

    @Override
    List<Rental> findAll() throws DaoException {
        return null;
    }

    @Override
    Rental findEntityById(int id) throws DaoException {
        return null;
    }

    @Override
    boolean delete(Rental entity) throws DaoException {
        return false;
    }

    @Override
    boolean delete(int id) throws DaoException {
        return false;
    }

    @Override
    boolean create(Rental entity) throws DaoException {
        return false;
    }

    @Override
    boolean update(Rental entity) throws DaoException {
        return false;
    }
}
