package com.chap9_2;

import com.chap9_2.Product;
import com.chap9_2.ProductIO;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;

public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String path = getServletContext().getRealPath("/WEB-INF/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
