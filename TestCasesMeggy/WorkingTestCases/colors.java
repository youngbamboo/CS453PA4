import meggy.Meggy;

class colors {
    public static void main(String[] whatever){
        Meggy.setPixel((byte)1, (byte)1, Meggy.Color.DARK);
        Meggy.setPixel((byte)1, (byte)2, Meggy.Color.RED);
        Meggy.setPixel((byte)1, (byte)3, Meggy.Color.ORANGE);
        Meggy.setPixel((byte)1, (byte)4, Meggy.Color.YELLOW);
        Meggy.setPixel((byte)1, (byte)5, Meggy.Color.GREEN);
        Meggy.setPixel((byte)2, (byte)1, Meggy.Color.BLUE);
        Meggy.setPixel((byte)2, (byte)2, Meggy.Color.VIOLET);
        Meggy.setPixel((byte)2, (byte)3, Meggy.Color.WHITE);
    }
}

