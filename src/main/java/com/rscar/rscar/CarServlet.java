package com.rscar.rscar;

import com.rscar.data_access.CarDao;
import com.rscar.data_access.DaoException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CarServlet", value = "/Cars")
public class CarServlet extends HttpServlet {
    protected transient CarDao carDao;

    @Override
    public void init() throws ServletException {
        carDao = (CarDao) getServletContext().getAttribute("CarDao");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            request.setAttribute("cars", carDao.findAllByingCar());
            request.getRequestDispatcher("/WEB-INF/show_cars.jsp").forward(request, response);
        } catch (DaoException e) {
            //log
        }
    }
}
