import meggy.Meggy;

class unary {
    public static void main(String[] whatever){
        Meggy.delay(500 + (-200));
        Meggy.setPixel( (byte)(-2 + 2), (byte)(5 - (-2)), Meggy.Color.RED );
         Meggy.delay((byte)(-1)*(byte)(-2));
        Meggy.delay(1- (-2));
    }
}

