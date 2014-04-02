/**
 
Checking true/false 
 
 */

import meggy.Meggy;

class condif {
    public static void main(String[] whatever){
                    		
		if( Meggy.checkButton(Meggy.Button.A) == false ){
			Meggy.setPixel((byte)0, (byte)0, Meggy.Color.WHITE);
                        
		}

                if( Meggy.checkButton(Meggy.Button.Up) == true ){
				Meggy.setPixel((byte)0, (byte)1, Meggy.Color.RED);
                                Meggy.setPixel( (byte)3, (byte)4, Meggy.Color.BLUE );
	        }
   

               if( !(Meggy.checkButton(Meggy.Button.Down)) ){
				Meggy.setPixel((byte)2, (byte)2, Meggy.Color.VIOLET);
                                Meggy.setPixel( (byte)3, (byte)3, Meggy.Color.BLUE );
	       			
		}


               if ((Meggy.checkButton(Meggy.Button.A)) && (Meggy.checkButton(Meggy.Button.B))) {
				
                    		Meggy.setPixel( (byte)3, (byte)3, Meggy.Color.RED );
	       			Meggy.setPixel( (byte)3, (byte)4, Meggy.Color.RED );
    	        		Meggy.setPixel((byte)1,(byte)1,Meggy.Color.DARK);
				
                } 

               if( !(Meggy.checkButton(Meggy.Button.A)) && !(Meggy.checkButton(Meggy.Button.B)) ){ 
			Meggy.setPixel( (byte)7, (byte)0, Meggy.Color.GREEN );


               }


               if( 1==3 ){
			Meggy.setPixel((byte)0, (byte)0, Meggy.Color.RED);
		}
		

		if( true && false){
			Meggy.setPixel((byte)0, (byte)0, Meggy.Color.RED);
		}
		
		if( true && true){
			Meggy.setPixel((byte)0, (byte)0, Meggy.Color.GREEN);
		}
		

    }
}
