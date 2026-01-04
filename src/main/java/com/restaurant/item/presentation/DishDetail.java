package com.restaurant.item.presentation;

import com.restaurant.common.time.SystemTimeProvider;
import com.restaurant.infrastructure.mybatis.SqlSessionFactoryProvider;
import com.restaurant.item.application.ItemService;
import com.restaurant.item.application.ItemTranslator;
import com.restaurant.item.domain.model.Item;
import com.restaurant.item.infrastructure.persistence.ItemRepositoryImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.ibatis.session.SqlSessionFactory;

import java.io.IOException;

@WebServlet(name = "DishDetail", value = "/dish-detail")
public class DishDetail extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ItemService itemService;

    @Override
    public void init() {
        SqlSessionFactory factory = SqlSessionFactoryProvider.get();
        itemService = new ItemService(new ItemRepositoryImpl(factory), new SystemTimeProvider());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        if (idParam != null) {
            try {
                int itemId = Integer.parseInt(idParam);
                Item item = itemService.get(itemId);
                request.setAttribute("detailed", ItemTranslator.detail(item));
                request.getRequestDispatcher("/WEB-INF/views/menu/dish-detail.jsp").forward(request, response);
            } catch (NumberFormatException e) {
                response.sendRedirect("dishes");
            }
        } else {
            response.sendRedirect("dishes");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}