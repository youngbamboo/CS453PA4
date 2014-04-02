import meggy.Meggy;

class getPixel {
    public static void main(String[] whatever){
        if(Meggy.getPixel((byte)1, (byte)1) == Meggy.Color.DARK) {
            Meggy.setPixel((byte)1, (byte)2, Meggy.Color.RED);
        }
    }
}

