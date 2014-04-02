import meggy.Meggy;

class arith {
    public static void main(String[] whatever){
        Meggy.setPixel( (byte)(1 + 2), (byte)(1 + 2), Meggy.Color.BLUE );
	Meggy.setPixel( (byte)(5 - 2), (byte)(2 + 2), Meggy.Color.BLUE );
        Meggy.setPixel( (byte)((byte)1*(byte)3), (byte)(2), Meggy.Color.BLUE);
        Meggy.delay((byte)3*(byte)2);
   }
}

