package com.restaurant.order.presentation;

import com.restaurant.common.time.SystemTimeProvider;
import com.restaurant.infrastructure.mybatis.SqlSessionFactoryProvider;
import com.restaurant.item.application.ItemService;
import com.restaurant.item.application.ItemTranslator;
import com.restaurant.item.infrastructure.persistence.ItemRepositoryImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.ibatis.session.SqlSessionFactory;

import java.io.IOException;

@WebServlet(name = "DishesOrder", value = "/order")
public class DishesOrder extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ItemService service;

    @Override
    public void init() {
        SqlSessionFactory factory = SqlSessionFactoryProvider.get();
        service = new ItemService(new ItemRepositoryImpl(factory), new SystemTimeProvider());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setAttribute("cards", service.all().stream().map(ItemTranslator::menuCard).toList());
            request.getRequestDispatcher("/WEB-INF/views/menu/order.jsp")
                    .forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}