package com.rscar.rscar.listeners;

import com.rscar.data_access.CarDao;
import com.rscar.data_access.connection_pool.BasicConnectionPool;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebListener
public class CarDaoListener implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

    CarDao facultyDao;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        /* This method is called when the servlet context is initialized(when the Web application is deployed). */
        BasicConnectionPool pool = (BasicConnectionPool) sce.getServletContext().getAttribute("connectionPool");
        facultyDao = new CarDao(pool);
        ServletContext context = sce.getServletContext();
        context.setAttribute("FacultyDao", facultyDao);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        /* This method is called when the servlet Context is undeployed or Application Server shuts down. */
        facultyDao = null;
    }
}
