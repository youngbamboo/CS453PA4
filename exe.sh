java -jar MJ.jar TestCase.java
java -jar MJSIM.jar -b -f TestCase.java.s > t1
javac TestCase.java
java TestCase > t2
diff t1 t2
