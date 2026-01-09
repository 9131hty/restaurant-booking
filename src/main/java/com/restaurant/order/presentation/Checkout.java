package com.restaurant.order.presentation;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.restaurant.item.domain.model.dump.CartItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

@WebServlet(name = "Checkout", value = "/checkout")
public class Checkout extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cartJson = request.getParameter("cartData");

        if (cartJson == null || cartJson.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/order");
            return;
        }

        Gson gson = new Gson();
        Type listType = new TypeToken<List<CartItem>>(){}.getType();
        List<CartItem> cartItems = gson.fromJson(cartJson, listType);

        double total = cartItems.stream()
                .mapToDouble(i -> i.getPrice() * i.getQty())
                .sum();

        request.setAttribute("cartItems", cartItems);
        request.setAttribute("total", total);

        request.getRequestDispatcher("/WEB-INF/views/menu/checkout.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}