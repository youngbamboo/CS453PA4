import meggy.Meggy;

class checkButton {
    public static void main(String[] whatever){
        if(Meggy.checkButton(Meggy.Button.A)) {
            Meggy.setPixel((byte)1, (byte)1, Meggy.Color.RED);
        }
    }
}

