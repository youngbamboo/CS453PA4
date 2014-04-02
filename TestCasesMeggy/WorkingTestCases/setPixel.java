import meggy.Meggy;

class setPixel {
    public static void main(String[] whatever){
        Meggy.setPixel((byte)1, (byte)2, Meggy.Color.RED);
        Meggy.setPixel((byte)2, (byte)3, Meggy.Color.GREEN);
        Meggy.setPixel((byte)3, (byte)4, Meggy.Color.BLUE);
    }
}

