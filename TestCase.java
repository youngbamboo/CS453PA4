/**
 * PA3buttondot
 * 
 * If no button is pressed, then lights up a single ORANGE pixel.
 * If button A is pressed, then lights up a single VIOLET pixel.
 * If button B is pressed, then lights up a single GREEN pixel.
 * 
 * MMS, 2/1/11
 */

import meggy.Meggy;

class TestCase {    
 public static void main(String[] whatever){
 
 
			if((byte)2 < 3) {
            Meggy.setPixel((byte)3, (byte)2, Meggy.Color.GREEN);
        }

       if(2 < (byte)3) {
            Meggy.setPixel((byte)2, (byte)3, Meggy.Color.GREEN);
        }
 			
		}
		
}
