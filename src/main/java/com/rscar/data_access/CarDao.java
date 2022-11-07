package com.rscar.data_access;

import com.rscar.data_access.connection_pool.BasicConnectionPool;
import com.rscar.entity.Car;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CarDao extends BaseDao<Car>{

    private static final String SQL_SELECT_ALL =
            "select * from car";

    private static final String SQL_SELECT_CAR_FOR_BYING =
                    "select car.*  " +
                    "from car " +
                    "left join regcar on regcar.CarId=car.id " +
                    "left join sales on sales.CarId=car.id" +
                    "where regcar.id is null  and sales.id is null;";

    public CarDao(BasicConnectionPool connectionPool) {
        super(connectionPool);
    }

    @Override
    List<Car> findAll() throws DaoException {
        List<Car> cars = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        try {
            connection = connectionPool.getConnection();
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL_SELECT_ALL);
            while (resultSet.next()) {
                cars.add(parseResultSet(resultSet));
            }
        } catch (SQLException throwable) {
            throw new DaoException(throwable.getMessage());
        } finally {
            close(statement);
            close(connection);
        }
        return cars;
    }

    List<Car> findAllByingCar() throws DaoException {
        List<Car> cars = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        try {
            connection = connectionPool.getConnection();
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL_SELECT_CAR_FOR_BYING);
            while (resultSet.next()) {
                cars.add(parseResultSet(resultSet));
            }
        } catch (SQLException throwable) {
            throw new DaoException(throwable.getMessage());
        } finally {
            close(statement);
            close(connection);
        }
        return cars;
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

    @Override
    boolean update(Car entity) throws DaoException {
        return false;
    }

    private Car parseResultSet(ResultSet resultSet) {
        Car car = new Car();
        try {
            car.setId(resultSet.getInt(1));
            car.setName(resultSet.getString(2));
            car.setMake(resultSet.getString(3));
            car.setType(resultSet.getString(4));
            car.setGraduationYear(resultSet.getDate(5));
            car.setVinCode(resultSet.getString(6));
            car.setTechnacalCondidtion(resultSet.getInt(7));
            car.setPrice(resultSet.getDouble(8));
        } catch (SQLException throwable) {
            // log
        }
        return car;
    }
}