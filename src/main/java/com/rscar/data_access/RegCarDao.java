package com.rscar.data_access;

import com.rscar.data_access.connection_pool.BasicConnectionPool;
import com.rscar.entity.RegCar;

import java.util.List;

public class RegCarDao extends BaseDao<RegCar> {
    protected RegCarDao(BasicConnectionPool connectionPool) {
        super(connectionPool);
    }

    @Override
    List<RegCar> findAll() throws DaoException {
        return null;
    }

    @Override
    RegCar findEntityById(int id) throws DaoException {
        return null;
    }

    @Override
    boolean delete(RegCar entity) throws DaoException {
        return false;
    }

    @Override
    boolean delete(int id) throws DaoException {
        return false;
    }

    @Override
    boolean create(RegCar entity) throws DaoException {
        return false;
    }

    @Override
    boolean update(RegCar entity) throws DaoException {
        return false;
    }
}
