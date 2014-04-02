/**
 
Checking true/false 
 
 */

import meggy.Meggy;

class condifelse {
    public static void main(String[] whatever){
                    		
		if(true){
				Meggy.setPixel( (byte)0,(byte)0, Meggy.Color.DARK);
			} else { Meggy.delay(100);}
			if(false){
				Meggy.setPixel((byte)1,(byte)1,Meggy.Color.BLUE);}
			else { Meggy.setPixel((byte)1,(byte)1,Meggy.Color.DARK);}


    }
}
