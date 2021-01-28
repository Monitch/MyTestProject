package app.model;

import app.point.Point;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Model {
    private static Model instance = new Model();

    private List<Point> model;

    public static Model getInstance() {
        return instance;
    }

    private Model() {
        model = new ArrayList<>();
    }

    public void add(Point point) {
        model.add(point);
    }

    public List<String> listX() {
        return model.stream()
                .map(Point::getPointX)
                .collect(Collectors.toList());
    }
    public List<String> listY() {
        return model.stream()
                .map(Point::getPointY)
                .collect(Collectors.toList());
    }
    public void clean(){
        model.clear();
    }
}
