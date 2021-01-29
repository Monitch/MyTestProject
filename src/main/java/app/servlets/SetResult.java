package app.servlets;

import app.model.Model;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.awt.*;
import java.io.IOException;
import java.util.List;

public class SetResult extends HttpServlet {

    static int parcerValue(String arg) {
        return Integer.parseInt(arg);
    }

    static int clockWayPoint(int x1, int x2, int y1, int y2) {

        return (x2 - x1) * (y2 + y1);
    }

    static boolean checkSquare(int x1, int x2, int y1, int y2) {
        boolean res = false;
        if (x1 == x2 || y1 == y2) res = true;
        return res;
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log("EnterDoGet");
        String res = "error :";
        boolean countOfPoint = true;
        Model model = Model.getInstance();
        List<String> X = model.listX();
        List<String> Y = model.listY();
        boolean clock;
        boolean square = true;
        int clockWay = 0;

        if (X.size() <= 3) {
            res = "illegal, as it would result in the wall going diagonally. Illegal,\n" +
                    "as it only has two corners.";
            countOfPoint = false;
        }

        if (countOfPoint) {
            for (int i = 0; i < X.size() - 1; i++) {
                clockWay += clockWayPoint(parcerValue(X.get(i)),
                        parcerValue(X.get(i + 1)),
                        parcerValue(Y.get(i)),
                        parcerValue(Y.get(i + 1)));
            }

            clockWay += clockWayPoint(parcerValue(X.get(X.size() - 1)),
                    parcerValue(X.get(0)),
                    parcerValue(Y.get(Y.size() - 1)),
                    parcerValue(Y.get(0))
            );
            clock = clockWay > 0;

            for (int i = 0; i < X.size() - 1; i++) {
                if (square) {
                    square = checkSquare(parcerValue(X.get(i)),
                            parcerValue(X.get(i + 1)),
                            parcerValue(Y.get(i)),
                            parcerValue(Y.get(i + 1)));
                }
                if (square) {
                    square = checkSquare(parcerValue(X.get(X.size() - 1)),
                            parcerValue(X.get(0)),
                            parcerValue(Y.get(Y.size() - 1)),
                            parcerValue(Y.get(0)));
                }
            }

            StringBuilder room = new StringBuilder("room:");
            for (int i = 0; i < X.size(); i++) {
                room.append("(").append(X.get(i)).append(";").append(Y.get(i)).append(")");
            }
            if (clock && square) {
                res = room.toString();
            }
            if (!square) {
                res += " non-right angles";
            }
            if (!clock) {
                res += " move counterclockwise";
            }
        } else res = "error: don't have 4 point";
        model.clean();

        req.setAttribute("res", res);
        req.setAttribute("X",X);
        req.setAttribute("Y",Y);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/res.jsp");
        requestDispatcher.forward(req, resp);
    }

}

