package app.point;

public class Point {
    private final String pointX;
    private final String pointY;

    public Point(String X, String Y) {
        this.pointX = X;
        this.pointY = Y;
    }
    public String getPointX() {
        return pointX;
    }

    public String getPointY() {
        return pointY;
    }
}
