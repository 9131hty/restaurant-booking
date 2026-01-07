package com.restaurant.item.presentation;

import com.restaurant.common.time.SystemTimeProvider;
import com.restaurant.common.time.TimeProvider;
import com.restaurant.infrastructure.mybatis.SqlSessionFactoryProvider;
import com.restaurant.item.application.ItemService;
import com.restaurant.item.application.ItemTranslator;
import com.restaurant.item.domain.model.Item;
import com.restaurant.item.domain.repository.ItemRepository;
import com.restaurant.item.infrastructure.persistence.ItemRepositoryImpl;
import com.restaurant.item.translate.Detail;
import com.restaurant.item.translate.Overview;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.ibatis.session.SqlSessionFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DishesDisplay", value = "/dishes")
public class DishesDisplay extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ItemService service;

    @Override
    public void init() {
        SqlSessionFactory factory = SqlSessionFactoryProvider.get();
        ItemRepository repo = new ItemRepositoryImpl(factory);
        TimeProvider timeProvider = new SystemTimeProvider();
        this.service = new ItemService(repo, timeProvider);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            request.setAttribute("items", service.all().stream().map(ItemTranslator::overview).toList());
            request.getRequestDispatcher("/WEB-INF/views/menu/dishes.jsp")
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