package app.servlets;

import app.model.Model;
import app.point.Point;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetValue extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/form.jsp");
        requestDispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
            String pointX = request.getParameter("pointX");
            String pointY = request.getParameter("pointY");
            Point point = new Point(pointX, pointY);
            Model model = Model.getInstance();

            if (!pointX.equals("") && !pointY.equals("")) {
                model.add(point);
            }

            request.setAttribute("pointX",pointX);
            request.setAttribute("pointY",pointY);
            doGet(request, response);
        }
    }
