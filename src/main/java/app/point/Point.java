package app.point;

public class Point {
    private String pointX;
    private String pointY;

    public Point() {
    }

    public Point(String X, String Y) {
        this.pointX = X;
        this.pointY = Y;
    }
    public String getPointX() {
        return pointX;
    }

    public void setPointX(String pointX) {
        this.pointX = pointX;
    }

    public String getPointY() {
        return pointY;
    }

    public void setPointY(String pointY) {
        this.pointY = pointY;
    }
}
