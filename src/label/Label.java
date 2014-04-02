package label;

/**
 * A Label represents an address in assembly language.
 */
import java.util.*;

public class Label  {
   private String name;
   private static int count;
   public static String ifelse_a;
   private static Stack else_sta=new Stack();
   private static Stack else_end_sta=new Stack();
   
   
   public static String while_label; 

  /**
   * a printable representation of the label, for use in assembly 
   * language output.
   */
   public String toString() {return name;}

  /**
   * Makes a new label that prints as "name".
   * Warning: avoid repeated calls to <tt>new Label(s)</tt> with
   * the same name <tt>s</tt>.
   */
   public Label(String n) {
    name=n;
   }

  /**
   * Makes a new label with an arbitrary name.
   */
   public Label() {
    this("MJ_L" + count++);
   }
   public static void setElseLable(String aLabel)
   {
		else_sta.push(aLabel);
   }
   public static String getElseLabel()
   {
	String aLabel=(String)else_sta.pop();
	return aLabel;
   }
   public static void setElseEndLable(String aLabel)
   {
		else_end_sta.push(aLabel);
   }
   public static String getElseEndLabel()
   {
	String aLabel=(String)else_end_sta.pop();
	return aLabel;
   }
   /*
   public static String getifelse_a(){
	return ifelse_a;
   }
   public static String getifelse_b(){
	return ifelse_b;
   }
   public static String getifelse_c(){
	return ifelse_c;
   }
   public static setifelse_a(String str){
	ifelse_a=str;
   }
   public static setifelse_b(String str){
	ifelse_b=str;
   }
   public static setifelse_c(String str){
	ifelse_c=str;
   }
   */
   public static int getCount() {return count;}
   
    
}
