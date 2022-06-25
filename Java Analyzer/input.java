// import org.antlr.v4.runtime.ANTLRFileStream;
// import org.antlr.v4.runtime.BailErrorStrategy;
// import org.antlr.v4.runtime.CommonTokenStream;
// import org.antlr.v4.runtime.DiagnosticErrorListener;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.atn.LexerATNSimulator;
// import org.antlr.v4.runtime.atn.PredictionMode;

//int.out.println("Hello");
// import java.awt.Cursor;
// import java.awt.Dialog;
// import java.awt.event.ActionEvent;
// import java.awt.event.ActionListener;
// import java.awt.event.WindowEvent;
// import java.awt.event.WindowListener;
// import java.io.FileInputStream;
// import java.io.FileOutputStream;
// import java.io.IOException;
// import java.io.ObjectInputStream;
// import java.io.ObjectOutputStream;
// import java.io.Serializable;
 
// import javax.swing.JButton;
// import javax.swing.JComboBox;
// import javax.swing.JDialog;
// import javax.swing.JFrame;
// import javax.swing.JLabel;
// import javax.swing.JList;
// import javax.swing.JScrollPane;
// import javax.swing.JTable;
// import javax.swing.JTextField;
// import javax.swing.ListSelectionModel;
// import javax.swing.ScrollPaneConstants;
// import javax.swing.table.AbstractTableModel;
package basics;
/**
*
* @author Padaboo I.B Aleksandrov
*/
public class DataTypes {

 public T car;
 public static void main(String[] args) {
    result = ((x != 1) && (x == 2));
 DataTypes app = new DataTypes();

 //int 4byte -2147483648 2147483648
 int i = 1;
 //short 2byte -32768 32767
 short s = 1;
 //long 8byte -9223372036854775808 -9223372036854775807
 long l = 1;
 //byte 1byte -128 ? 127
 byte b = 1;
 //float 4byte +-3,40282347E+38F
 float f = 0.1f;
 //double 8byte +-1,7976931348623157E+308F
 double d = 0.2f;
 //char
 char c = "d";
 //boolean true false logical 1/0
 boolean bool = true;
 }
 //public static constatn available in any method in other classes
 //a constant can not be changed
 public static final double con = 0.3f;
}

// package basics;
/**
* https://docs.oracle.com/javase/tutorial/java/data/beyondmath.html
* @author padaboo I.B Aleksandrov
*/
public class JavaMath {
 public static void main(String[] args) {
 /**
 Math.abs (n) - returns the unit number n.
 Math.round (n) - returns an integer closest to a real number n (rounds n).
 Math.ceil (n) - returns the closest number to the number n to the right of zero fractional part
(e.g., Math.ceil (3.4) returns a result of 4.0).
 Math.cos (n), Math.sin (n), Math.tan (n) - trigonometric function sin, cos tg and the argument n,
indicated in radians.
 Math.acos (n), Math.asin (n), Math.atan (n) - inverse trigonometric functions return the angle in
radians.
 Math.toDegrees (n) - a measure of returns-degree angle in radians n.
 Math.toRadians (n) - returns radian measure of an angle in degrees n.
 Math.sqrt (n) - returns the square root of n.
 Math.pow (n, b) - returns the value of the power function of degree n b, the base and the
exponent may be real.
 Math.log (n) - returns the natural logarithm of n.
 Math.log10 (n) - returns the logarithm of n.
 */
 System.out.println(Math.abs(-2.33));
 System.out.println(Math.round(Math.PI));
 System.out.println(Math.round(9.5));
 System.out.println(Math.round(9.5-0.001));
 System.out.println(Math.ceil(9.4));
 double c = Math.sqrt(3*3 + 4*4);
 System.out.println(c);
 double s1 = Math.cos(Math.toRadians(60));
 System.out.println(s1);
 }
}
// Operations
// package basics;
/**
*
* @author Padaboo I.B Aleksandrov
*/
public class Operations {

 public static void main(String[] args) {
 Operations app = new Operations();
 /**
 * + sum
 * - subtraction
 * / division
 * * multiplication
 * % remainder of the division
 */
 int x = 1;

 x = x + x;

 System.out.println(x);
 //2

 //x+1
 ++x;
 System.out.println(x);
 //3

 x += 2;
 System.out.println(x);
 //5

 /**
 * Logical operations
 * == equally
 * != not equally
 * <= less or equal
 * => more or equal
 * < less
 * > more
 * && and
 * || or
 */

 boolean result = (x != 1);

 System.out.println(result);
 //true

 result = ((x != 1) && (x == 2));

 System.out.println(result);
 //false

 //ternar (condition) ? expression_1 : expression_2
 //if the expression is true if the first part is done there is no second

 result = x>3 ? true : false;

 System.out.println(result);

 /**
 * byte operations
 * & byte and
 * | byte or
 * ^ excluding or
 * ~ not
 * >> bit shift to the right
 * << bit shift to the left
 */

 /**
 * Priority
 * [] () from right to left
 * !~++--+()new from right to left
 * * / % from left to right
 * + - from left to right
 * << >> >>> from left to right
 * < <= > >= instanceof from left to right
 * == != from left to right
 * & from left to right
 * ^ from left to right
 * | from left to right
 * && from left to right
 * || from left to right
 * ?: from right to left
 * = += -= *= /= %= |= ^= <<= >>= >>>= from right to left
 */

 // null - empty field
 // nan - not a number

 }
}
// Constructions
// package basics;
/**
*
* @author Padaboo I.B. Aleksandrov
*/
public class Constructions {
 //public, visible inside and outside
 public int pub = 1;
 //private, visible inside
 private int pri = 2;
 //protected, visible inside and in child class
 protected int pro = 3;

 //public static varible
 public static int staticVar = 4;
 //constant
 public static final int finalVar = 4;
 //enum is used as a constant
 // enum Modifier {
 // PUBLIC,
 // PROTECTED,
 // PRIVATE,
 // ABSTRACT,
 // STATIC,
 // FINAL,
 // TRANSIENT,
 // VOLATILE,
 // SYNCHRONIZED,
 // NATIVE,
 // STRICTFP;
 // }

 public static void main(String[] args) {
 //local varible of method (funttion)
 int localVarible = 0;

 //create exemplar of class (object) constructions
 Constructions constructions = new Constructions();
 //if condition
 if(1 == 1){
 //true
 } else {
 //false
 }

 //else if
 if (false){
 }else if (false){

 }else {
 //do
 }


 //for: repeating cycle with the condition 1
 for(int i=1; i<5; i++){
 System.out.println("i is: " + i);
 }

 //for: repeating cycle with the condition 2
 int[] numbers = {1,2,3,4,5,6,7,8,9,10};
 // for (int item : numbers) {
 // System.out.println("i is: " + item);
 // }

 //while true
 int n = 5;
 while (n > 0) {
 System.out.println("while " + n);
 n--;
 }
 //do while true
 int i = 0;
 do{
 System.out.print ("while " + ++i);
 } while (i < 10);

 //continue skip iteration/next

 //new create a new object
 String s = new String();

 //selection operator
 int month = 3;
 switch (month) {
 case 1: s = "1";
 break;
 case 2: s = "2";
 break;
 case 3: s = "3";
 break;
 case 4: s = "4";
 default: break;
 }
 //print case result
 System.out.println(s);
 //private varible
 System.out.println(constructions.pri);
 //public varible
 System.out.println(constructions.pub);
 //protected varible
 System.out.println(constructions.pro);
 System.out.println(staticVar*2);

 //call function from object
 System.out.println(constructions.func());
 //call overload function func with 2 arguments
 System.out.println(constructions.func(2,2));

 //call enum Modifier
 Modifier variableModifier = Modifier.PUBLIC;
 System.out.println(variableModifier);

 }

 /**
 * private function return type int, no arguments
 */
 private int func(){
 //do
 return 128;
 }

 /**
 * function overloading with 2 arguments
 * @param a
 * @param b
 * @return int
 */
 private int func(int a,int b){
 return a*b;
 }
}
// Strings
// package basics;
/**
*
* @author Padaboo I.B. Aleksandrov
*/
public class Strings {
 public static void main(String[] args) {
 String j = "jmonkey";
 String e = "engine";

 //concatenation

 System.out.println(j+3);
 //jmonkey3

 System.out.println(j + " " + e);

 //equals ==

 System.out.println(j.equals("jmonkey"));

 //length
 System.out.println(j.length());

 //substring start end
 System.out.println(j.substring(0,3));
 //jmo

 //first symbol
 char first = j.charAt(0);
 //j
 System.out.println(first);
 char arr[] = {'j','m','3'};

 String fromchar = new String(arr);

 System.out.println(fromchar);

 //JDK API String https://docs.oracle.com/javase/7/docs/api/java/lang/String.html

 }
}
// Arrays
// package basics;
// import java.util.ArrayList;
/**
* Java arrays
* @author Padaboo I.B Aleksandrov
*/
public class Arrays {
 public static void main(String[] args) {
 //create array of integer size 3
 int[] a = new int[3];

 a[0] = 1;
 a[1] = 2;
 a[2] = 3;

 int[] b = {1,2,3};

 for(int j = 0; j <= b.length - 1; j++) {
 System.out.println(b[j]);
 }

 //multidimensional array
 int[][] ab = new int[6][4];
 //int[][] ab = {{2,3},{2,2}};

 for(int i=0; i<ab.length; i++) {
 // for(int j=0; j<ab[i].length; j++) {
 // ab[i][j] = (int)(Math.random()*10);
 // }
 }

 //array of objects
 Car[] cars = new Car[10];

 //array list
 ArrayList<Car> carList = new ArrayList<Car>();

 int i = 0;
 //add objects to array list
 while(i< 3){
 carList.add(new SportCar());
 }

 Car[] carsArray = new Car[carList.size()];

 carList.toArray(carsArray);
 //add(n,e);
 //remove(n);

 //https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html
 }
}
// Collections
// package basics;
// import java.util.HashMap;
// import java.util.Iterator;
// import java.util.LinkedHashMap;
// import java.util.LinkedList;
// import java.util.List;
// import java.util.Map;
// import java.util.Map.Entry;
// import java.util.Queue;
// import java.util.Set;
// import java.util.TreeMap;
/**
* LinkedList HashMap LinkedHashMap TreeMap
* https://docs.oracle.com/javase/7/docs/api/java/util/Collections.html
* @author Padaboo I.B. Aleksandrov
*/
public class Collections {
 public static void main(String[] args) {
 Collections app = new Collections();

 //app.LinkedListExample();
 //app.HashMapExample();
 //app.LinkedHashMap();
 //app.TreeMapExample();
 app.QueueExample();
 }

 private void LinkedListExample(){
 //Java LinkedList
 List<String> list = new LinkedList<String>();
 list.add("player 1");
 list.add("player 2");
 list.add("player 3");
 Iterator iter = list.iterator();

 while(iter.hasNext()){
 System.out.println(iter.next());
 }

 for(int num=0; num<list.size(); num++){
 System.out.println(list.get(num));
 }

 for (Iterator<String> it = list.iterator(); it.hasNext();) {
 String str = it.next();
 System.out.println(str);
 }

 list.get(0);

 list.set(1,"Monster");

 list.remove(0);

 list.size();
 //https://docs.oracle.com/javase/7/docs/api/java/util/LinkedList.html
 }

 private void HashMapExample(){
 //java HashMap Example
 Map<String, Car> hashmap = new HashMap<String, Car>();

 hashmap.put("id1", new SportCar());
 hashmap.put("id2", new SportCar());
 hashmap.put("id3", new SportCar());

 SportCar iterCar;

 // for (Map.Entry entry : hashmap.entrySet()) {
 // iterCar = (SportCar)entry.getValue();
 // System.out.println("key: " + entry.getKey() + " val: "+ iterCar.getSpeed());
 // }
 }

 private void LinkedHashMap(){
 //Java LinkedHashMap Example
 LinkedHashMap<Integer, String> map =
 new LinkedHashMap<Integer, String>();
 map.put(1, "Java");
 map.put(2, "Jmonkey");
 map.put(3, "3d");
 map.put(4, "Convas");
 map.put(5, "ClientServer");
 //map.get(4);

 Set set = map.entrySet();

 Iterator iterator = set.iterator();
 Map.Entry me;
 while(iterator.hasNext()) {
 me = (Map.Entry)iterator.next();
 System.out.println("key: "+ me.getKey() + " val: "+me.getValue()+"\n");
 }
 }

 private void TreeMapExample(){
 TreeMap<Integer, String> tmap =
 new TreeMap<Integer, String>();
 tmap.put(1, "Blender");
 tmap.put(3, "Ogre3D");
 tmap.put(70,"Animation");
 tmap.put(4, "Shaders");
 // for (Entry<Integer, String> entry : tmap.entrySet()) {
 // System.out.println(entry.getKey() + " - " + entry.getValue());
 // }
 }

 private void QueueExample(){
 Queue<String> qe=new LinkedList<String>();
 qe.add("Java Oracle");
 qe.add("Ubuntu Linux");
 qe.add("Convas 3d");
 // for (String iteratorValue : qe) {
 // System.out.println("Queue Next Value :"+iteratorValue);
 // }
 }
}
// Try cahtch
// package basics;
// import java.util.logging.Level;
// import java.util.logging.Logger;
/**
* https://docs.oracle.com/javase/tutorial/essential/exceptions/
* @author padabo I.B Aleksandrov
*/
public class ExceptionTryCatchFinally {
 public static void main(String[] args) {
 try{
 throw new Exception("Simple Exception");
 }catch(Exception e){
 // Logger.getLogger(IO.class.getName()).log(Level.SEVERE, null, e);
 System.out.println(e.getMessage());
 }finally{
 System.out.println("Finally");
 }
 }
}
// Objects
// Abstarct car
// package basics;
/**
* Abstract class (have abstract methods)
* @author Padaboo I.B. Aleksandrov
*/
public abstract class Car{
 protected int speed;
 protected String color;

 /**
 * constructor
 */
 public Car(){
 speed = 50;
 }
 /**
 * overload
 * @param color 
 */
 public Car(String color){
 this.color = color;
 }
 /**
 * A common method for all heirs
 */
 public void drive(){
 //do drive
 }
 /**
 * a method that must be implemented in all heirs
 */
 abstract boolean painting(String newColor);
 /**
 *
 * @return int speed
 */
 public int getSpeed(){
 return speed;
 }
 /**
 * a method that must be implemented in all heirs
 */
 abstract void acceleration(int a);
}
// Sport car
/*
*/
// package basics;
/**
* Heir class abstract class car
* @author Padaboo I.B. Aleksandrov
*/
public class SportCar extends Car {
 // @Override
 boolean painting(String newColor) {
 color = newColor;
 return true;
 }
 public void acceleration(int a) {
 speed = speed * a;
 }
}
/*
*/
// package basics;
/**
* Heir class abstract class car
* @author Padaboo I.B. Aleksandrov
*/
public class SportCar extends Car {
 // @Override
 boolean painting(String newColor) {
 color = newColor;
 return true;
 }
 public void acceleration(int a) {
 speed = speed * a;
 }
}
// package basics;
/**
* Objects abstract extends protected
* @author padaboo I.B Aleksandrov
*/
public class Objects {
 public static void main(String[] args) {

 Car sportCar = new SportCar();

 System.out.println(sportCar.getSpeed());

 sportCar.acceleration(20);

 System.out.println(sportCar.getSpeed());

 }
}
// Reflections
// package basics;
// import java.lang.reflect.Field;
/**
*
* @author padaboo I.B. Aleksandov
*/
public class Reflection {

 public static void main(String[] args) throws ClassNotFoundException, InstantiationException,
IllegalAccessException {
 //get class name
 SportCar sc = new SportCar();

 String name = sc.getClass().getName();

 System.out.println(name);

 //object from class name
 Object rsc = (Object) Class.forName(name).newInstance();

 System.out.println(rsc.toString());

 //get class
 // Class csc = SportCar.class;

 System.out.println(csc);

 //get fields of super class
 // Field[] fields = SportCar.class.getSuperclass().getDeclaredFields();
 // for (Field field : fields) {
 // System.out.println(field.getName());
 // }
 //https://docs.oracle.com/javase/tutorial/reflect/
 }
}
// Parametrization
// package basics;
/**
* Java Parametrizations generic inner class example
* @author padaboo I.B. Aleksandrov
*/
public class Parametrization{

 //https://docs.oracle.com/javase/tutorial/extra/generics/methods.html
 public static void main(String[] args) {
 Parametrization app = new Parametrization();

 app.genericTest();

 }

 private void genericTest(){
 GenericObj<String,Car> g = new GenericObj<String,Car>("Test",new SportCar());
 }

 class GenericObj {
 public String name;
 public T car;
 private GenericObj(String str, T carObj) {
 car = carObj;
 name = str;
 }
 }
}
// Class path
// package basics;
// import java.io.File;
/**
* http://docs.oracle.com/javase/tutorial/essential/environment/sysprop.html
* @author padaboo I.B Aleksandrov
*/
public class ClassPath {
 public static void main(String[] args) {
 System.getProperty("java.class.path");
 String classpath = System.getProperty("java.class.path");
 String[] classpathEntries = classpath.split(File.pathSeparator);
 // for(String s: classpathEntries){
 // System.out.println(s);
 // }
 }
}
// IO
/*
 <?xml version="1.0" encoding="UTF-8"?>
 <root>
 <rows>
 <item name="player1" level="20" />
 <item name="player2" level="15" />
 <item name="player3" level="10" />
 </rows>
 <system fps="60"/>
 </root>
*/
// package basics;
// import java.io.BufferedReader;
// import java.io.File;
// import java.io.FileReader;
// import java.io.FileWriter;
// import java.io.IOException;
/**
* https://docs.oracle.com/javase/tutorial/essential/io/scanning.html
* IO Java read file write file sample;
* @author Padaboo I.B. Aleksandrov
*/
public class IO {
 String fileName = "iotest.xml";
 String content;
 String absoluteFilePath;
 String workingDirectory;

 public static void main(String[] args) throws IOException {
 IO app = new IO();
 app.workingDirectory = app.getworkingDirectory();
 app.absoluteFilePath = app.workingDirectory + app.fileName;

 app.content = app.readFile(app.absoluteFilePath);
 app.content += "append";

 app.writeFile(app.absoluteFilePath,app.content);
 }

 private String getworkingDirectory(){
 return System.getProperty("user.dir") + File.separator + "src"+File.separator+
"basics"+File.separator;
 }

 private String readFile(String path) throws IOException{
 BufferedReader br = new BufferedReader(new FileReader(path));
 StringBuilder sb = new StringBuilder();
 String line = br.readLine();
 while (line != null) {
 sb.append(line);
 sb.append(System.lineSeparator());
 line = br.readLine();
 System.out.println(line);
 }

 br.close();
 return sb.toString();
 }

 private void writeFile(String path,String str) throws IOException{
 File file = new File(path);
 FileWriter writer = new FileWriter(file);
 writer.write(str);
 writer.flush();
 writer.close();
 }
}
// XML
/*
<?xml version="1.0" encoding="UTF-8"?>
<root>
 <rows>
 <item name="player1" level="20" />
 <item name="player2" level="15" />
 <item name="player3" level="10" />
 </rows>
 <system fps="60"/>
</root>
*/
// package basics;
// import java.io.File;
// import java.io.IOException;
// import javax.xml.parsers.DocumentBuilder;
// import javax.xml.parsers.DocumentBuilderFactory;
// import javax.xml.parsers.ParserConfigurationException;
// import org.w3c.dom.Node;
// import org.w3c.dom.NodeList;
// import org.xml.sax.SAXException;
/**
* https://docs.oracle.com/javase/7/docs/api/javax/xml/xpath/package-summary.html
* https://docs.oracle.com/javase/tutorial/jaxp/sax/parsing.html
* Xml Xpath sample
* @author padaboo I.B. Aleksandrov
*/
public class XmlSample {

 public static int main(String[] args) throws IOException, ParserConfigurationException,
SAXException {
 String filePath = XmlSample.getworkingDirectory() + "iotest.xml";

 DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
 factory.setNamespaceAware(true);
 DocumentBuilder builder;
 org.w3c.dom.Document doc = null;

 builder = factory.newDocumentBuilder();
 doc = (org.w3c.dom.Document) builder.parse(new File(filePath));
 NodeList ltemsList = doc.getElementsByTagName("item");

 for(int i=0; i<ltemsList.getLength() ; i++) {
 Node itemNode = ltemsList.item(i);

 System.out.println(itemNode.getAttributes().getNamedItem("level").getNodeValue());
 }
 }

 public static String getworkingDirectory(){
 return System.getProperty("user.dir") + File.separator + "src"+File.separator+
"basics"+File.separator;
 }
}
// System
// Command line
// package sys;
/**
* https://docs.oracle.com/javase/tutorial/essential/environment/cmdLineArgs.html
* @author padaboo I.B Aleksandrov
*/
public class CommandLineSample {
 public static void main(String[] args){
 if (args.length > 0) {
 // for (String s: args) {
 // System.out.println(s);
 // }
 }
 }
}
// Execute
// package sys;
// import java.io.BufferedReader;
// import java.io.IOException;
// import java.io.InputStreamReader;
/**
* https://docs.oracle.com/javase/7/docs/api/java/lang/Runtime.html
* @author padaboo I.B. Aleksandrov
*/
public class ExecuteSample {
 public static void main(String[] args) throws IOException, InterruptedException {
 Process p = Runtime.getRuntime().exec("pwd");
 p.waitFor();
 BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
 String line = "";
 while ((line = reader.readLine()) != null) {
 System.out.println(line);
 }
 }
}
// Key press
// package sys;
// import java.util.Scanner;
/**
* https://docs.oracle.com/javase/tutorial/essential/io/scanning.html
* @author padaboo I.B. Aleksandrov
*/
public class InScannerKeyPress {
 public static void main(String[] args) {
 Scanner keyboard = new Scanner(System.in);
 boolean exit = false;

 while (!exit) {
 String input = keyboard.nextLine();
 if(input != null) {
 System.out.println("Your input is : " + input);
 // if ("quit".equals(input)) {
 // exit = true;
 // } else if ("x".equals(input)) {
 // }
 }
 }
 keyboard.close();
 }
}
// Native Sample
// package sys;
/**
*
* https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaNativeInterface.html
* https://en.wikipedia.org/wiki/Java_Native_Interface
* @author padaboo I.B. Aleksandrov
*/
public class NativeSample {

 public native void displayHelloWorld();
 // static{
 // System.loadLibrary("hello");
 // }
 public static void main(String[] args){
 /**
 javac NativeSample.java
 $ javah -classpath . NativeSample
 $ gcc -shared -fPIC -I $JAVA_HOME/include -I $JAVA_HOME/include/linux Hello.cpp -o
hello.so
 $ java -classpath . -Djava.library.path=. HelloWorld
 Hello World!
 */
 // new NativeSample().displayHelloWorld();
 }
}
/**
#include "HelloJNICppImpl.h"
#include <iostream>
using namespace std;
void sayHello () {
 cout << "Hello World from C++!" << endl;
 return;
}
*/
/**
#ifndef _HELLO_JNI_CPP_IMPL_H
#define _HELLO_JNI_CPP_IMPL_H
#ifdef __cplusplus
 extern "C" {
#endif
 void sayHello ();
#ifdef __cplusplus
 }
#endif
#endif
*/
// Threads
// Thread
// package threads;
/**
* https://docs.oracle.com/javase/7/docs/api/java/lang/Thread.html
* Java Threads
* @author Padaboo I.B. Aleksandrov
*/
public class ThreadSample{

 public static void main(String[] args) {
 ThreadSample app = new ThreadSample();
 app.threadRun();
 }

 class MyThread extends Thread{

 // @Override
 public void run() {
 System.out.println("Run");
 }
 }

 private void threadRun(){
 MyThread t = new MyThread();
 t.start();
 }
}
// Thread Sleep
// package threads;
// import java.util.logging.Level;
// import java.util.logging.Logger;
/**
* https://docs.oracle.com/javase/tutorial/essential/concurrency/sleep.html
* Java thread sleep
* @author Padaboo I.B. Aleksandrov
*/
public class ThreadSleepSample {
 public static void main(String[] args) {
 ThreadSleepSample app = new ThreadSleepSample();
 app.threadSleepTest();
 }

 private void threadSleepTest(){
 Runnable r;
 // r = new Runnable() {
 // public void run() {
 // for (int i = 0; i < 9; i = i + 1){
 // try {
 // System.out.println("Run " + i);
 // Thread.sleep(500);
 // } catch (InterruptedException ex) {
 // Logger.getLogger(ThreadSleepSample.class.getName()).log(Level.SEVERE, null, ex);
 // }
 // }
 // }
 // };
 Thread t = new Thread(r);
 t.start();
 }
}
// Thread Lock
// package threads;
// import java.util.concurrent.TimeUnit;
// import java.util.concurrent.locks.Lock;
/**
* https://docs.oracle.com/javase/tutorial/essential/concurrency/newlocks.html
* Java lock sample
* @author padaboo I.B. Aleksandrov
*/
public class ThreadLock implements Runnable{
 private Lock lock;
 public static void main(String[] args){
 ThreadLock app = new ThreadLock();

 }

 // @Override
 public void run() {
 try {
 if(lock.tryLock(10, TimeUnit.SECONDS)){
 //do
 }
 } catch (InterruptedException e) {
 e.printStackTrace();
 }finally{
 //unlock
 lock.unlock();
 }
 }
}
// Thread Local
// package threads;
/**
* Java ThreadLocal example
* https://docs.oracle.com/javase/7/docs/api/java/lang/ThreadLocal.html
* @author Padaboo I.B. Aleksandrov
*/
public class ThreadLocalSample implements Runnable {
 // ThreadLocal<String> str = new ThreadLocal<String>(){
 // @Override
 // protected String initialValue(){
 // return new String("Test");
 // }
 // };;

 public static void main(String[] args){
 ThreadLocalSample app = new ThreadLocalSample();

 Thread t = new Thread(app);
 t.start();
 }
 public void run() {
 System.out.println(str.get());
 }
}
// Daemon thread
// package threads;
/**
* https://docs.oracle.com/javase/7/docs/api/java/lang/Thread.html
* Java daemon thread
* @author Padaboo I.B Alelsandrov
*/
public class DaemonThread extends Thread{
 public static void main(String[] args) throws InterruptedException {
 DaemonThread t = new DaemonThread();
 t.setDaemon(true);
 t.start();

 try {
 Thread.sleep(3000);
 } catch (InterruptedException x) {}
 }

 // @Override
 public void run() {
 while (true) {
 System.out.println("Daemon Run ");
 try {
 sleep(500);
 } catch (InterruptedException e) {
 // handle exception here
 }
 }
 }
}
// Runnable
// package threads;
/**
* Java runnable threads
* @author padaboo I.B Aleksandrov
*/
public class RunnableSample implements Runnable{

 public static void main(String[] args) {
 RunnableSample run = new RunnableSample();
 Thread t = new Thread(run);
 t.start();
 }
 public void run() {
 int i = 1;
 while(i<=10){
 System.out.println(i);
 i++;
 }
 }
}
// Runanble handler
// package threads;
/**
* Java Runnable handler
* @author Padaboo I.B. Aleksandrov
*/
public class RunnableHandler {

 public static void main(String[] args) {
 RunnableHandler app = new RunnableHandler();
 app.hadlerTest();
 }

 public void hadlerTest(){
 // Runnable handler = new Runnable(){
 // public void run() {
 // System.out.println("Run");
 // }
 // };

 Thread t = new Thread(handler);
 t.start();
 }
}
// Thread isInterrupted
// package threads;
/**
* https://docs.oracle.com/javase/tutorial/essential/concurrency/interrupt.html
* @author padaboo I.B. Aleksandrov
*/
public class ThreadInterrupted extends Thread{
 public static void main(String[] args){
 ThreadInterrupted app = new ThreadInterrupted();
 app.start();
 }

 public void run( ) {
 int i = 0;
 while (!isInterrupted( )) {
 System.out.println("i:"+i);
 i++;
 }
 }
}
// Thread executors
// package threads;
// import java.util.concurrent.Executor;
/**
* https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/Executor.html
* Java Thread Executors
* @author padaboo I.B. Aleksandrov
*/
public class ExecutorsSample {

 public static void main(String[] args) {
 ExecutorsSample app = new ExecutorsSample();
 app.executorsTest();
 }

 private void executorsTest(){
 // Executor executor = new Executor() {
 // public void execute(Runnable command) {
 // command.run();
 // }
 // };

 // Runnable command = new Runnable() {
 // public void run() {
 // System.out.println("Run");
 // }
 // };

 executor.execute(command);
 }
}
// Thread executors services
// package threads;
// import java.util.concurrent.ExecutorService;
// import java.util.concurrent.Executors;
/**
* Java Executor ExecutorService
* https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/ExecutorService.html
* @author Padaboo I.B. Aleksandrov
*/
public class ExecutorsServicesSample {
 ExecutorService pool = Executors.newFixedThreadPool(2);
 public static void main(String[] args) {
 ExecutorsServicesSample app = new ExecutorsServicesSample();
 app.ExecutorsServicesTest();
 }

 private void ExecutorsServicesTest(){
 pool.execute(new Handler(1));
 pool.execute(new Handler(2));
 pool.shutdown();
 }

 class Handler implements Runnable {
 private final int number;
 Handler(int number) { this.number = number; }
 public void run() {

 System.out.println("Thread" + this.number);
 }
 }
}
// Thread Callable Future
// package threads;
// import java.util.concurrent.Callable;
// import java.util.concurrent.ExecutionException;
// import java.util.concurrent.ExecutorService;
// import java.util.concurrent.Executors;
// import java.util.concurrent.Future;
/**
* Java Callable Future Sample
* https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/Callable.html
* @author padaboo I. B. Aleksandrov
*/
class CallableFutureSample {
 public static void main(String[] args) throws ExecutionException, InterruptedException{
 CallableFutureSample app = new CallableFutureSample();
 app.callableTest();
 }

 private void callableTest() throws ExecutionException, InterruptedException{
 ExecutorService ex = Executors.newCachedThreadPool();

 CallableThread call = new CallableThread();

 Future<Integer> future = ex.submit(call);
 System.out.println(future.get());

 ex.shutdown();
 }

 class CallableThread implements Callable<Integer>{
 public Integer call() throws Exception {
 int i = 1;
 return i;
 }
 }

}
// Thread Count Down Latch
// package threads;
// import java.util.concurrent.CountDownLatch;
/**
*https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/CountDownLatch.html
* @author padaboo I.B. Aleksandrov
*/
public class CountDownLatchSample {

 public static void main(String args[]) throws InterruptedException {
 CountDownLatchSample app = new CountDownLatchSample();
 app.CountDownLatchTest();
 }

 private void CountDownLatchTest() throws InterruptedException{
 CountDownLatch startSignal = new CountDownLatch(1);
 CountDownLatch doneSignal = new CountDownLatch(2);
 for (int i = 0; i < 2; ++i) // create and start threads
 // new Thread(new Worker(startSignal, doneSignal)).start();
 startSignal.countDown(); // let all threads proceed
 doneSignal.await();
 }
class Worker implements Runnable {
 private final CountDownLatch startSignal;
 private final CountDownLatch doneSignal;

 private Worker(CountDownLatch startSignal, CountDownLatch doneSignal) {
 this.startSignal = startSignal;
 this.doneSignal = doneSignal;
 }
 public void run() {
 try {
 startSignal.await();
 doWork();
 doneSignal.countDown();
 } catch (InterruptedException ex) {} // return;
 }
 void doWork() {
 System.out.println("Work");
 }
 }
}
// Scheduled Thread Pool
// package threads;
// import java.util.concurrent.Executors;
// import java.util.concurrent.ScheduledExecutorService;
// import java.util.concurrent.TimeUnit;
/**
* https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/ScheduledExecutorService.html
* @author Padaboo I.B. Aleksandrov
*/
public class ScheduledThreadPoolSample {
 public static void main(String[] args) throws InterruptedException {
 ScheduledThreadPoolSample app = new ScheduledThreadPoolSample();

 }

 private void ScheduledTest() throws InterruptedException{
 ScheduledExecutorService scheduledThreadPool = Executors.newScheduledThreadPool(5);


 for(int i=0; i<3; i++){
 Thread.sleep(1000);
 WorkerThread worker = new WorkerThread("Run");
 scheduledThreadPool.schedule(worker, 10, TimeUnit.SECONDS);
 }

 //add some delay to let some threads spawn by scheduler
 Thread.sleep(30000);

 scheduledThreadPool.shutdown();
 while(!scheduledThreadPool.isTerminated()){
 //wait for all tasks to finish
 }
 System.out.println("Finished all threads");
 }

 public class WorkerThread implements Runnable{
 private String command;
 public WorkerThread(String str){
 this.command = str;
 }
 // @Override
 public void run() {
 processCommand();
 }
 private void processCommand() {
 try {
 Thread.sleep(5000);
 } catch (InterruptedException e) {
 e.printStackTrace();
 }
 }
 // @Override
 public String toString(){
 return this.command;
 }
 }
}
// Thread synchronized
// package threads;
/**
* Java syncronized
* @author Padaboo I.B. Aleksandrov
*/
public class ThreadSyncSample{
 Sync synchObj;

 public static void main(String[] args){
 ThreadSyncSample app = new ThreadSyncSample();
 app.syncTest();
 }

 private void syncTest(){
 synchObj = new Sync();

 // Runnable r = new Runnable() {
 // public void run() {
 // //synchronized method
 // synchObj.plus();
 // System.out.println("synchronized method" + synchObj.getJ());
 // }
 // };
 Thread t = new Thread(r);
 t.start();
 }
 class Sync{
 int j = 1;

 public synchronized void plus(){
 j++;
 }

 public synchronized int getJ(){
 return j;
 }

 // public void syncTest(){
 // synchronized (this) {
 // System.out.println("notifyAll");
 // this.notifyAll();
 // }
 // }
 }
}
// Net
// Client socket
// package net;
// import java.io.BufferedReader;
// import java.io.InputStreamReader;
// import java.net.Socket;
/**
* https://docs.oracle.com/javase/tutorial/networking/sockets/readingWriting.html
* @author Padaboo I.B. Aleksandrov
*/
public class ClientSocketSample {
 public static void main(String[] args) throws Exception {

 Socket s = new Socket("127.0.0.1", 8080);
 BufferedReader input =
 new BufferedReader(new InputStreamReader(s.getInputStream()));

 String answer = input.readLine();
 System.out.println(answer);
 System.exit(0);
 }
}
// Server socket
// package net;
// import java.io.PrintWriter;
// import java.net.ServerSocket;
// import java.net.Socket;
// import java.util.Date;
/**
* https://docs.oracle.com/javase/tutorial/networking/sockets/clientServer.html
* @author padaboo I.B. Aleksandrov
*/
public class ServerSocketSample {
 public static void main(String[] args) throws Exception {
 ServerSocket listener = new ServerSocket(8080);
 try {
 while (true) {
 Socket socket = listener.accept();
 try {
 PrintWriter out =
 new PrintWriter(socket.getOutputStream(), true);
 // out.println(new Date().toString());
 } finally {
 socket.close();
 }
 }
 }
 finally {
 listener.close();
 }
 }
}
// Thread server
// package net;
// import java.io.IOException;
// import java.io.InputStream;
// import java.io.OutputStream;
// import java.io.PrintWriter;
// import java.net.ServerSocket;
// import java.net.Socket;
// import java.util.Scanner;
// import java.util.logging.Level;
// import java.util.logging.Logger;
/**
* Thread Server messages
* @author Padaboo I.B. Aleksandrov
*/
public class ThreadServerSample {
 public static void main(String[] args){
 ThreadServerSample app = new ThreadServerSample();
 try {
 app.startUp();
 } catch (IOException ex) {
 // Logger.getLogger(ThreadServerSample.class.getName()).log(Level.SEVERE, null, ex);
 }

 }

 private void startUp() throws IOException{
 ServerSocket sock = new ServerSocket(8080);
 int i = 1;

 while(true){
 Socket in = sock.accept();
 Runnable r = new ThreadServer(in);
 Thread t = new Thread(r);
 t.start();
 }
 }

 class ThreadServer implements Runnable{
 Socket in;

 private ThreadServer(Socket in) {
 this.in = in;
 }

 public void run() {
 try {
 InputStream inStream = in.getInputStream();
 OutputStream outStream = in.getOutputStream();

 Scanner in = new Scanner(inStream);

 PrintWriter out = new PrintWriter(outStream);

 while(in.hasNextLine()){
 String line = in.nextLine();
 out.println(line);
 }

 } catch (IOException ex) {
 // Logger.getLogger(ThreadServerSample.class.getName()).log(Level.SEVERE, null, ex);
 }
 }
 }

}
// Url sample
// package net;
// import java.io.BufferedReader;
// import java.io.InputStreamReader;
// import java.net.URL;
/**
* https://docs.oracle.com/javase/tutorial/networking/urls/readingURL.html
* @author padaboo I.B. Aleksandrov
*/
public class UrlSample {

 public static void main(String[] args) throws Exception {
 URL oracle = new URL("http://192.168.0.101/");
 BufferedReader in = new BufferedReader(
 new InputStreamReader(oracle.openStream()));
 String inputLine;
 while ((inputLine = in.readLine()) != null)
 System.out.println(inputLine);
 in.close();
 }
}
// Mysql jdbc
// package jdbcmysql;
// import java.sql.Connection;
// import java.sql.DriverManager;
// import java.sql.ResultSet;
// import java.sql.ResultSetMetaData;
// import java.sql.Statement;
/**
* jdbc mysql example (have a dump file)
* Connector http://dev.mysql.com/downloads/connector/j/
* Statement https://docs.oracle.com/javase/tutorial/jdbc/basics/processingsqlstatements.html
* Prepared http://docs.oracle.com/javase/tutorial/jdbc/basics/prepared.html
* @author Padaboo I.B Aleksandrov
*/
public class MysqlConnectSample {

 public static void main(String[] args) throws Exception {
 Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/jdbctest","root",
"");

 String query = "SELECT * FROM jdbctest.Users;";
 
 //execute mysql procedure
 //CallableStatement stmt;
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery(query);
 //stmt.executeUpdate(sql);
 ResultSetMetaData md = rs.getMetaData();

 System.out.println("count " + md.getColumnCount());

 while (rs.next()) {
 int id = rs.getInt("id");
 System.out.println(id);
 }
 rs.close();
 }
}

public class Splash /*extends AppCompatActivity*/{
// byte c = (byte)(a+b);
protected void onCreate(Bundle savedInstanceState)
{
    return (s);

            a = (int) ((0.1+0.7) * 10);
    a = "1"+getDate()+"1"+t.getText().toString();

    e = (int) (a / b)*(c - d)*(4 * 3) - (int) (5);
        a = true ? 0 : true ? 1 : 2;
    a = first ? second : third;
        byte c = (byte)(a+b);
    
    super.onCreate(savedInstanceState);
setContentView(R.layout.activity_splash);
new Intent(Splash.this, MainActivity.this);
startActivity(intent);
finish();
}
}




public class Note {
EditText t;
final int cleen=1,rec=2,allapps=3,exit=4;

protected void onCreate(Bundle savedInstanceState) {
super.onCreate(savedInstanceState);
setContentView(R.layout.activity_note);
t=(EditText)findViewById(R.id.editText);
}
public void newNote(View view){
writeFile("\n"+getDate()+"\n"+t.getText().toString(),true);
}
void writeFile(String s,boolean b){
if (!Environment.getExternalStorageState().equals(
Environment.MEDIA_MOUNTED)) {
Toast.makeText(getApplicationContext(),"??? ?????",
Toast.LENGTH_SHORT).show();
return;
}
File sdPath = Environment.getExternalStorageDirectory();
sdPath = new File(sdPath.getAbsolutePath() + "/" + "MyNotesReester");
sdPath.mkdirs();
File sdFile = new File(sdPath, "notes");
try {
BufferedWriter bw = new BufferedWriter(new FileWriter(sdFile,b));
bw.write(s);
bw.close();
} catch (IOException e) {
e.printStackTrace();
Toast.makeText(getApplicationContext(),"????? ???",
Toast.LENGTH_SHORT).show();
return;
}
if (!b)Toast.makeText(getApplicationContext(),"?? ??????",Toast.LENGTH_SHORT).show();
}
public void showNotes(View view){
startActivity(new Intent(Note.this,Show.this));
}
private String getDate() {
SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH:mm");
return dateFormat.format(new Date());
}
public boolean onCreateOptionsMenu(Menu menu) {

// Inflate the menu; this adds items to the action bar if it is present.
getMenuInflater().inflate(R.menu.notebook, menu);
menu.add(0,cleen,0,"????");
menu.add(0,rec,0,"??????");
menu.add(0,allapps,0,"?????");
menu.add(0,exit,0,"???");
return true;
}
public boolean onOptionsItemSelected(MenuItem item){
switch (item.getItemId()){
case cleen:
t.setText("");
break;
case rec:
writeFile("\n"+getDate()+"\n"+t.getText().toString(),false);
break;
case allapps:
try {
Intent intent = new Intent(Intent.ACTION_VIEW);
intent.setData(Uri.parse("market://search?q=developer%20 kalexal&hl=ru"));
startActivity(intent);
}catch (Exception e){
Toast.makeText(getApplicationContext(),"? ???? ? ??? ????", Toast.LENGTH_LONG).show();
}
break;
case exit:
finish();
break;
}
return super.onOptionsItemSelected(item);
}
}

 public class CalculatorConsole {
/**

*/
public static void main(String[] args) {
String answer,symbol;
float num1=0,num2=0,result=0;
Scanner sc=new Scanner(System.in);
do{
System.out.println("??? ???:");
try{
num1=sc.nextFloat();

}catch(Exception e){
System.out.println("?????? ????");
return;
}
Scanner scSymb=new Scanner(System.in);
System.out.println("??:");
symbol=scSymb.nextLine();
// if(!"+".equals(symbol)&&!"-".equals(symbol)&&!"*".equals(symbol)&&!"/".equals(symbol)){
// System.out.println("??????? ???");
// return;
// }
System.out.println("??? ???:");
try{
num2=sc.nextFloat();
}catch(Exception e){
System.out.println("?????? ????");
return;
}
switch(symbol){
case "+":
result=plus(num1, num2);
break;
case "-":
result=minus(num1, num2);
break;
case "*":
result=multiPlus(num1, num2);
break;
case "/":
result=multiMinus(num1, num2);
break;
default:
break;
}
System.out.println(num1+symbol+num2+"="+result);
Scanner scAns=new Scanner(System.in);
System.out.println("???? ????(?/?)");
answer=scAns.nextLine();
// if(!"?".equals(answer)&&!"y".equals(answer)){
// System.out.println("??? ????? ?????");
// return;
// }
}while (equals(answer)||equals(answer));
}
static float plus(float a,float b){
return a+b;
}
static float multiPlus(float a,float b){
return a*b;
}
static float minus(float a,float b){
return a-b;
}
static float multiMinus(float a,float b){
return a/b;
}

}


public class User implements Serializable
{
    private String name;
    private String login;
    private String email;
    private int access;
    
    public static String[] type_of_access=new String[1000];
    public static int n=0,k=1;
    public static void beginWork()
    {
        User.type_of_access[0]="???"; 
        for(int i=1;i<1000;++i)
        {
            type_of_access[i]="?????? ?? ????";
        }
    }
    public void startWork()
    {
        BasicFrame programm = new BasicFrame();
        programm.startWork();
    }
    public static void main(String[] args)
    {
        new User.startWork();
    }
    public User()
    {
        name = "?????";
        login = "?????";
        email = "?????";
        access = 0;
    }
    public void setName(String name)
    {
 
    }
}

public class FXMLCalculatorController implements Initializable {

private TextArea t;

private TextField e;
float[]m;
float result;
int i=-1;
int[]oper;

private void resultButton(ActionEvent event) {
resultate();
}

private void plus(ActionEvent event){
fb(1,"+");
}

private void minus(ActionEvent event){
fb(2, "-");
}

private void gPlus(ActionEvent event){
fb(3, "*");
}

private void gMinus(ActionEvent event){
fb(4, "/");
}

private void clean(ActionEvent event){
clean();
}

private void keyAction(KeyEvent event){
switch(event.getText()){
case "+":
fb(1, "+");
break;
case "-":
fb(2, "-");
break;
case "*":
fb(3, "*");
break;
case "/":
fb(4, "/");
break;
case "=":
resultate();
break;
case "c":
clean();
break;
case "?":
clean();
break;
default:
break;
}
if(event.getCode().getName().equals("Enter")){
resultate();
}
if(event.getCode().getName().equals("Delete")){
clean();
}
}

private void keyPostAction(KeyEvent event){
if(event.getText().equals("*")||event.getText().equals("/")||
event.getText().equals("c")||event.getText().equals("?")) {
e.setText("");
}
if(e.getText().contains("=")){
e.setText(e.getText().substring(1));
}
}
void resultate(){
i++;
if(i>19){
alertWindow("??? ??????!","????!");
return;
}
try{
m[i]=Float.parseFloat(e.getText());
}catch(NumberFormatException ex){
ex.getMessage();

e.setText("");
e.requestFocus();
return;
}
t.appendText(m[i]+"=");
switch (oper[0]){
case 1:result=m[0]+m[1];break;
case 2:result=m[0]-m[1];break;
case 3:result=m[0]*m[1];break;
case 4:result=m[0]/m[1];break;
}
for (int j=1;j<i+1;j++){
switch (oper[j]){
case 1:result+=m[j+1];break;
case 2:result-=m[j+1];break;
case 3:result*=m[j+1];break;
case 4:result/=m[j+1];break;
}
}
e.setText(result+"");
}
void fb(int n,String s){
i++;
if(i>18){

alertWindow("??? ??????!","????!");
return;
}
try{
m[i]=Float.parseFloat(e.getText());
}catch(NumberFormatException ex){
ex.getMessage();

e.setText("");
e.requestFocus();
return;
}
e.setText("");
e.requestFocus();
oper[i]=n;
t.appendText(m[i]+""+s);
}
void clean(){
i=-1;
result=0;
m=new float[20];
oper=new int[20];
t.setText("");
e.setText("");
e.requestFocus();
}
void alertWindow(String s,String str){
Alert alert = new Alert(AlertType.INFORMATION);
alert.setTitle(str);
alert.setHeaderText(null);
alert.setContentText(s);
alert.showAndWait();
}

public void initialize(URL url, ResourceBundle rb) {
m=new float[20];
oper=new int[20];
e.requestFocus();
}
}

 public class calcpi {
  
  public static int[][] main() 
    {

        int nums[] = new int[4];
        int[] nums2 = new int[5];

        sum(a, b).sum(a, b);  // 14
        sum(3, a);  // 9
        sum(5, 23); // 28

        // int.out.println("Hello");
        // out.int.out.println("Hello");
        System.out.println("Hello \"  /* ' ' */Java 15 from Netbeans!");
        // System.out.println('  \' " " \' ');

        String str1 = "lalala " + tmp + " lalala";

        int x, y;
        x = 10;
        y = 25;

        int xX = 5, yy = 4;



        boolean isActive = false;
        boolean isAlive = true;
        byte a = 3;
        byte b = 8;
        short a = 3;
        short b = 8;
        int a = 4;
        int b = 9;
        long a = 5;
        long b = 10;
        double x = 8.5;
        double y = 2.7;
        float x = 8.5f;
        float y = 2.7f;
        char c = 102;


        int num8 = 010;
        String name = "Tom";
        int age = 30;
        float height = 1.7f;
          
        System.out.printf("Name: %s  Age: %d  Height: %.2f \n", name, age, height, this);



        int c = a % b;
        int a = 8;
        int b = ++a;
        int a = 8;
        int b = a++;
        int b = --a;
        int b = a--;
        int c = a + 5 * ++b; 
        int x = 10 / 5 * 2;
        double d = 2.0 - 1.1;

        int test = (5) - a * 3 / 5 + s++;

        int a = b & a + 5;

        byte a = 12;
        System.out.println(~a);


        // int a = a>>>b;
        int b = a>>b;
        int c = a<<b;

        int a = (((a | c) & s) ^ (a&&b||a)) < 5;

        a = 5;
        a = 5.0;
        a = -5.33;
        A = CCCCCCCC - 4;
        AA = CCCCCCC + 4;
        AAA = CCCCCC * 4;
        AAAA = CCCCC / 4;
        AAAAA = CCCC % 4;
        AAAAAA = CCC ^ 4;
        AAAAAAA = CC & 4;
        AAAAAAAA = C | 4;
        B += 5 ^ DDDDDDDD;
        BB -= 5 / DDDDDDD;
        BBB *= 5 % DDDDDD;
        BBBB /= 5 + DDDDD;
        BBBBB %= 5 & DDDD;
        BBBBBB ^= 5 * DDD;
        BBBBBBB &= 5 | DD;
        BBBBBBBB |= 5 - D;
        --DEC;
        DEC--;
        ++INC;
        INC++;
        a = a + 5;
        a += 5;
        a = 3 * 3 % 5;

        c>>=b;
        c<<=b;
        c^=b;


        byte a = 3;
        short b = 4;
        byte c = (byte)(a+b);

        int d = "a" + 5;
        System.out.println(d);

        int num1 = 6;
        int num2 = 4;
        if(num1>num2){
            System.out.println("??? ??? ???? ????");
        }
        else{
            System.out.println("??? ??? ???? ????");
        }

        if(num1 > num2 && num1>7){
            System.out.println("??? ??? ???? ???? ? ???? 7");
        }


        int num = 3;
        int output = 0;
        switch(num){
             
            case 1: 
                output = 3;
                break;
            case 2: 
            case 3: 
            case 4: 
                output = 6;
                break;
            case 5: 
                output = 12;
                break;
            default:
                output = 24;
        }
        int z = x<y? (x+y) : (x-y);

        for (int i = 1; i < 9; i++){
            System.out.printf("???? ??? %d ??? %d \n", i, i * i);
        }



        for (; i<9;){
            System.out.printf("???? ??? %d ??? %d \n", i, i * i);
            i++;
        }

        for (; ;){
            System.out.printf("???? ??? %d ??? %d \n", i, i * i);
        }


        int a = /*no */ 5 + /*sdfsdf*/ 5;


        do{
            System.out.println(j);
            j--;
        }
        while (j > 0);


        while (j > 0){
         
            System.out.println(j);
            j--;
        }


        for (int i = 0; i < 10; i++){
            if (i == 5)
                break;
        }

        for (int i = 0; i < 10; i++){
            if (i == 5)
                continue;
        }

        int nums[] = new int[4];
        int[] nums2 = new int[5];


        int[] nums = new int[] { 1, 2, 3, 5 };
        int[] nums2 = { 1, 2, 3, 5 };




        int[] nums1 = new int[] { 0, 1, 2, 3, 4, 5 };
         
        int[][] nums2 = { { 0, 1, 2 }, { 3, 4, 5 } };


        int[] array = new int[] { 1, 2, 3, 4, 5 };



        int[][] nums = new int[][] 
        { 
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        };
        for (int i = 0; i < nums.length; i++){
            for(int j=0; j < nums[i]; j++){
                     
                System.out.printf("%d ", nums[i][j]);
            }
            System.out.println();
        }


        HashMap<String, Integer> fruits = new HashMap();
        fruits.put("?????? ??????", 5);
        fruits.put("?????? ???", 10);
        fruits.put("?????? ?????", 7);
        System.out.println(fruits.get("?????? ?????"));



        arr[0][1] = 3;
        arr[0][1][0] = 3;
        try{
            int[] numbers = new int[3];
            numbers[4]=45;
            System.out.println(numbers[4]);
        }
        catch(Exception ex){
             
            ex.printStackTrace();
        }
        finally{
            System.out.println("??? finally");
        }



        try{
            numbers[6]=45;
            numbers[6]=Integer.parseInt("gfd");
        }
        catch(ArrayIndexOutOfBoundsException ex){
                     
            System.out.println("??? ? ???? ????");
        }
        catch(NumberFormatException ex){
                     
            System.out.println("??? ??????? ? ??? ? ???");
        }



        try{
            Scanner in = new Scanner(System.in);
            int x = in.nextInt();
            if(x>=30){
               // throw new Exception("??? ? ??? ?? ???? 30");
           }
        }
        catch(Exception ex){
             
            System.out.println(ex.getMessage());
        }

        a = (int) ((0.1+0.7) * 10);


        a = (boolean) 1;
        a = (int) (25/7);
        // a = (int) (2.5/2 + 4) - (int) "5";
        a = (int) (2.5/2 + 4 - "5");
        a = (int) 2.5/2 + 4 - "5";
        f = (double)(d++);
        g = (double)(++e);



        if(test()) { if(!test()) { } }

        if(a) { }
        else if(a == "l")
        {
            if(a[5] != "lala") { }
            else if(true) { }
            
        }


        Object kate = new Client("Kate", "DeutscheBank", 2000);

        Object sam = new Employee("Sam", "Oracle");

        // final int LIMIT = 5;
        System.out.println(LIMIT);  // 5
        if(CONSTANT) {}
        else if(CONSTANT == 5) {}
        else if(CONSTANT == "lala") {}


            a = 5;
        a = 5.0;
        a = -5.33;
        
        A = CCCCCCCC - 4;
        AA = CCCCCCC + 4;
        AAA = CCCCCC * 4;
        AAAA = CCCCC / 4;
        AAAAA = CCCC % 4;
        AAAAAA = CCC ^ 4;
        AAAAAAA = CC & 4;
        AAAAAAAA = C | 4;

        B += 5 ^ DDDDDDDD;
        BB -= 5 / DDDDDDD;
        BBB *= 5 % DDDDDD;
        BBBB /= 5 + DDDDD;
        BBBBB %= 5 & DDDD;
        BBBBBB ^= 5 * DDD;
        BBBBBBB &= 5 | DD;
        BBBBBBBB |= 5 - D;

        --DEC;
        DEC--;
        ++INC;
        INC++;

        a = a + 5;
        a += 5;

        a = 3 * 3 % 5; 

        _a = __;


        q123 = !(--DEC) + -5;
        w234 += DEC-- - --DEC_2;
        FF = ++INC ^ -c;
        R = 5 + -6 - 8 + 4;
        XxXxX = 100 - -c * 55 + ++f;
        _qwqw ^= (d + dd) / 38;
        

        c = a++;
        f = (double)d++;

        A = 5 >> c;

        g &= --g | g;
        d |= -5&-gg;
        sd = g | d| d|dd;
        sd = g & d& d&dd;

        a = (false && foo() + 1);
        b = (true  || foo());

        a = true ? 0 : true ? 1 : 2;

        return; 
        return 0;
        return a;
        return a + sF;
        return (s);








        if (a > b)
        { }

        if (a > b);

        if (a > b)
            a= "a ???? b";

        if (a > b) {
            a= "a ???? b";
            b = a;
        }

        //------------------------

        if (a > b) {
            b = a;
        } 
        else
        {
            if (a > b) {
                b = a;
            } 
            
            b = a;

            if (a > b)
                b = a;
            else
            {
                if (a > b) {
                    b = a;
                } 
                b = a;
            }
        }

        //------------------------

        if (a > b) {
            a= "a ????, ?? b";
        }
        else if (1) {
        }
        else{
            a= "else"; }

        //------------------------

        if (a > b) {
            a= "a ????, ?? b";
        }
        else if (a == 5)
        {a= "a == 5";}
        else {
          a= "a ????, ?? b";
        }

        //------------------------

        if (a > b) {
            {{a= "a ????, ?? b";}}
        }
        else if (a == b)
            a= "a ??? b";

        //------------------------

        while(1)
        {
            a = 1;
        }

        while(a);

        i = 1;
        while (i <= 10) {
            a= i++; 
        }
        //------------------------

        do {
            if (i < 5) {
                a= "i ?? ?????? ???";
                break;
            }
            i *= factor;
            if (i < minimum_limit) {
                break;
            }
            a= "???? i ?? ????";
        } while (0);

        do {

        } while (0);

        //------------------------

        for (i = 1; i <= 10; i++);

        for (i = 1; i <= 10; i++)
        { }


        for (i = 1; i <= 10; i++) {
            a= i;
        }

        for (i = 1; ; i++) {
            if (i > 10) {
                break;
            }
            a= i;
        }

        i = 1;
        for (; ; ) {
            if (i > 10) {
                break;
            }
            a= i;
            i++;
        }

        for(i = 0, size = count(people); i < size; ++i) {
            people[i][6] = mt_rand(000000, 999999);
        }


        for (i = 1, j = 0; i <= 10; a= i);

        for (i = 1, j = 0; i <= 10; j += i, a= i);

        for (i = 1, j = 0; i <= 10; a= i, j += i);

        for (i = 1, j = 0; i <= 10; a= i, j += i, i++);

        for (i = 1, j = 0; i <= 10; j += i, a= i, i++);

        for (i = 1, j = 0; i <= 10; j += i, i++, a= i);

        //------------------------

        switch (i) {
            case 0:
                a= "i ??? 0";
                a= "i ??? 0";
                break;
            case 1:
                a= "i ??? 1";
                break;
            case 2:
                a= "i ??? 2";
                break;
        }

        switch (i) {
            case 0:
                a= "i ??? 0";
            case 1:
                a= "i ??? 1";
            case 2:
                a= "i ??? 2";
        }

        switch (i) {
            case "????":
                a= "i ?? ????";
                break;
            case "?????":
                a= "i ?? ?????";
                break;
            case "???":
                a= "i ?? ???";
                break;
        }

        switch (i) {
            case 0:
            case 1:
            case 2:
                break;
            case 3:
                a= "i ??? 3";
            default:
                a= "i ? ??? 0, 1 ?? 2";
        }



        //------------------------

        return;
        return null;
        return true;
        return false;
        return 0;
        return a;
        return "aaa";
        return "aaa";

        return a + 5;
        return (a + 5);
        return (a + 5) == 0;

        //------------------------

        if(1)
        {}
        else if(sA)
        {
            if(AA >= 5)
                a--;
            if(AAA < AA) {}
            else if(AAAA == -1)
            {
                // a= a+=c;
            }
        }
        else if(a == -12)
        {
            a= 0;
            if(!C)
            {
                while (a == 3);
                while(b || c == 8){}
                while(c && a > 5){;}
            }

            IFIFIFIFIIFF = 5;
        }

        while(g5 ^= 3)
        {
            // a= a+=c;
            a= a--+c;

            switch (a) {
                case "value":
                    
                    break;
                
                default:
                    break;
            }
        }

        if(5 && f-- == h)
        {}
        else
        {
            while (aWhile != 0) 
            {
                if(5)
                {
                    {
                        {{{a = c;}}}
                    }
                }
                else if(2 < 5 && c < (255))
                {
                    a == b;
                }
                AFTER_IF_ELSE = 100;
            }
            
            BETWEEN_WHILE = 1;
            
            while(4   >   (a--)*B )
            {
                a= a;
                if(1) sC +=a;
                a= while_;
            }
        }

    }
         
    

     public static void main(String[] args) {
        System.out.println((10.5 + 2 * 3) / (45 - 3.5));
         int i;
         UDChar pi, frac;
         System.out.println("???????? ???!");
         java.lang.String StrPI="PI=";
         Date now = new Date();
         System.out.println(now);
         
         pi = new UDChar(2);
         frac = new UDChar(2);
         for (i=1; i <3000; i++){
             frac.mulEntiere(i);
             frac.divEntiere(2*i +1);
             pi.add(frac);
         }
         now = new Date();
         System.out.println(now);
         System.out.println("PI="+ (int)pi);
         System.out.println("frac="+ frac);
         int[] a = new int[10];
         UDChar pi, frac;
         System.out.println("???????? ???!");
         java.lang.String StrPI="PI=";
         Date now = new Date();
         System.out.println(now);

         pi = new UDChar(2);
         frac = new UDChar(2);
         // i < 3000;
         // ???? new ? for
         for (i=1; i < 3000; i++){
             frac.mulEntiere(i);
             frac.divEntiere(2*i +1);
             pi.add(frac);
         }
         now = new Date();
     }
 }
 /**********************fichier UDChar.java**************************/
 /**
 * @author cyberfastfred
 * Created on 23 janv. 2005
 * implementation basique orientee pour le calcul de pi a 100 decimale
 * La serie calculant pi n'ajoutant que des nombre fractionnaires de plus en plus petit
 * Les grands nombres sont uniquement positifs
 */
 public class UDChar {
     public static final int PRECISION = 1000;
     /*nombre de chiffres*/
     public static final int PRECISION = 1000;
  
     protected char chiffres  = new char [PRECISION];
     /* 10 chiffres avant la virgule PRECISION-10 chiffres apres */
     
     /*cree un grand decimal a partir d'un int
      *
      */     
     public UDChar(int entier){
         int i;
         /*
 * Initiailisation de la partie entiere
 */
          for (i=9; i>=0; i--){
              int chiffre;
              chiffre = entier / 10;
              chiffres[i] = intToChiffre(chiffre);
  
              entier /=10;
          }
          /*mise a 0 des decimales*/
          for (i=10; i<PRECISION; i++) chiffres[i]=0;
     }
     
     /*
      * Ajoute l'operande Ultradecmal
      */
     public void add(UDChar operande) {
         int i, somme, retenue;
         retenue = 0;
         for(i = PRECISION - 1; i >= 0; i--){
             somme = chiffreToInt(chiffres[i])
              + chiffreToInt(operande.chiffres[i])
                  + retenue;
             retenue = somme / 10;
             somme %= 10;
             chiffres[i] = intToChiffre(somme);
         }
     }
  
     /*
      * Soustrait l'operande UltraDecimal
      */
     public void sub(UDChar operande) {
         int i, retrait, retenue;
         retenue = 0;
         for(i = PRECISION - 1; i >= 0; i--){
             retrait = 10 + chiffreToInt(chiffres[i])
              - chiffreToInt(operande.chiffres[i])
                  - retenue;
             retenue = 1 - (retrait / 10);
             retrait %= 10;
             chiffres[i] = intToChiffre(retrait);
         }
         
     }
  
     /*
      * multiplication d'un UD par un entier
      * suffisant pour le calcul de series simples
      */
     public void mulEntiere(int operande){
         UDChar partiel, original;
         int i, chiffre, operandeSuiv;;
         original = this.dupl();
         
         /* remise a zero de l'UD */
         for (i=0; i<PRECISION; i++) chiffres[i]="0";
         
         operandeSuiv = operande;
         for (i=0; i <10 ;i++){
             partiel = original.dupl();
             chiffre = operandeSuiv % 10;
             operandeSuiv /=10;
             partiel.mulUnit(chiffre);
             this.add(partiel);
             original.shiftLeft(1);
         }
     }
  
     /*
      * multiplication d'un UD par un entier
      * suffisant pour le calcul de series simples
      */
     public void divEntiere(int operande){
         int i, reste, result;
         reste = 0;
         result = 0;
         for (i = 0; i <PRECISION; i++){
             reste = reste * 10 + chiffreToInt(chiffres[i]);
             result = reste / operande;
             reste = reste % operande;
             chiffres[i] = intToChiffre(result);
         }
         
     }
  
     /*
      * Renvoie une chaine cotenant le nombre represente
      */
     public String toString() {
         String str= new String("");
         int i;
         for(i=0; i<10; i++){
             str = str + chiffres[i];
         }
         str = str +",";
         for(i=10; i<PRECISION; i++){
             if (i%80==0)str=str+"\n";
             str = str + chiffres[i];
         }
         return str;
     }
     /*
      * clone un UD
      */
     private UDChar dupl(){
         UDChar ud = new UDChar(0);
         ud.add(this); /* pas optimal mais facile */
         return ud;
     }
     
     /*
      * decalage a droite
      * equivalent a multiplication par 10 puissance pas
      */
     private void shiftRight(int pas){
         int i;
         if (pas <= 0) return;
         if (pas > PRECISION) pas = PRECISION;
         for (i = pas; i <PRECISION; i++){
             chiffres[i] = chiffres[i-pas];
         }
         for (i = 0; i < pas; i++){
             chiffres[i] = "0";
         }
     }
     
     /*
      * decalage a gauche
      * equivalent a multiplication par 10 puissance pas
      */
     private void shiftLeft(int pas){
         int i;
         if (pas <= 0) return;
         if (pas > PRECISION) pas = PRECISION;
         for (i = 0; i < PRECISION-pas; i++){
             chiffres[i] = chiffres[i+pas];
         }
         for (i = PRECISION-pas; i <PRECISION; i++){
             chiffres[i] = "0";
         }
     }
     
     /*
      * convertie un chiffre sous forme de char en entier
      */
     private int chiffreToInt(char chiffre){
         switch(chiffre){
             case 0:
                 return(0);
             case 1:
                 return(1);
             case 2:
                 return(2);
             case 3:
                 return(3);
             case 4:
                 return(4);
             case 5:
                 return(5);
             case 6:
                 return(6);
             case 7:
                 return(7);
             case 8:
                 return(8);
             case 9:
                 return(9);
             default:
                 return(0);
         }
     }
     
     /*
      * Convertie un entier de 0 a 9 en char
      */
     private char intToChiffre(int chiffre){
         switch(chiffre){
             case 0:
              return(0);
             case 1:
                  return("1");
             case 2:
                  return("2");
             case 3:
                  return("3");
             case 4:
                  return("4");
             case 5:
                  return("5");
             case 6:
                  return("6");
             case 7:
                  return("7");
             case 8:
                  return("8");
             case 9:
                  return("9");
             default:
                 return("0");
         }
     }
     
     /*
      * multiplie par un chiffre de 0 a 9
      */
     private void mulUnit(int operande){
         int chiffre, i, resultat, retenue;
         chiffre = operande%10;
         retenue = 0;
         for(i = PRECISION - 1; i >= 0; i--){
             resultat = chiffreToInt(chiffres[i])
                  * chiffre
                  + retenue;
             retenue = resultat / 10;
             resultat %= 10;
             chiffres[i] = intToChiffre(resultat);
         }
     }
  
 }

public class Welcome
{
    public static void main(String[] args)
    {
        // ???? ? ???? ????? Welcome to Java!
        System.out.println("Welcome to Java!");
    }
}

public class WelcomeWithThreeMessages
{
 
    public static void main(String[] args)
    {
        System.out.println("???????? ???!");
        System.out.println("???? ???");
        System.out.println("Problem Driven");
    }
}

public class ComputeExpression
{
 
    public static void main(String[] args)
    {
        System.out.println((10.5 + 2 * 3) / (45 - 3.5));
    }
}


public class Test
{
 
    public static void main(String[] args)
    {
        System.out.println("3.5 * 4 / 2 ? 2.5 ??? ");
        System.out.println(3.5 * 4 / 2 - 2.5);
    }
}

public class AverageOfNumbers {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Please enter the total number of integers.");
        int count = scanner.nextInt();

        int sum = 0;

        for (int i = 0; i < count; i++) {
            System.out.println("Please enter number " + (i + 1) + ":");
            sum += scanner.nextInt();
        }
        System.out.println("Sum=" + sum + ",Count=" + count);

        BigDecimal average = new BigDecimal((double) sum / count);
        average = average.setScale(2, RoundingMode.HALF_UP);
        System.out.println("Average of entered numbers = " + average);
        scanner.close();
    }
}

public class SwappingNumbers {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Enter the first number:");
        int first = scanner.nextInt();
        System.out.println("Enter the second number:");
        int second = scanner.nextInt();
        scanner.close();

        System.out.println("Initial value of numbers are: "+first+" and "+second);
        
        first = first + second;
        second = first -second;
        first = first - second;
        
        System.out.println("Value of numbers after swapping are: "+first+" and "+second);

    }

}


/*
 [The "BSD license"]
  Copyright (c) 2013 Terence Parr
  All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions
  are met:

  1. Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
  2. Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.
  3. The name of the author may not be used to endorse or promote products
     derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
// adsasd
// import org.antlr.v4.runtime.ANTLRFileStream;
// import org.antlr.v4.runtime.BailErrorStrategy;
// import org.antlr.v4.runtime.CommonTokenStream;
// import org.antlr.v4.runtime.DiagnosticErrorListener;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.atn.LexerATNSimulator;
// import org.antlr.v4.runtime.atn.PredictionMode;

// import java.io.File;
// import java.lang.System;
// import java.util.ArrayList;
// import java.util.List;
// import java.util.concurrent.BrokenBarrierException;
// import java.util.concurrent.CyclicBarrier;

/* This more or less duplicates the functionality of grun (TestRig) but it
 * has a few specific options for benchmarking like -x2 and -threaded.
 * It also allows directory names as commandline arguments. The simplest test is
 * for the current directory:

~/antlr/code/grammars-v4/java $ java Test .
/Users/parrt/antlr/code/grammars-v4/java8/JavaBaseListener.java
/Users/parrt/antlr/code/grammars-v4/java8/Java8Lexer.java
/Users/parrt/antlr/code/grammars-v4/java8/JavaListener.java
/Users/parrt/antlr/code/grammars-v4/java8/JavaParser.java
/Users/parrt/antlr/code/grammars-v4/java8/Test.java
Total lexer+parser time 1867ms.
 */
class Test {
//  public static long lexerTime = 0;
    public static boolean profile = false;
    public static boolean notree = false;
    public static boolean gui = false;
    public static boolean printTree = false;
    public static boolean SLL = false;
    public static boolean diag = false;
    public static boolean bail = false;
    public static boolean x2 = false;
    public static boolean threaded = false;
    public static boolean quiet = false;
//  public static long parserStart;
//  public static long parserStop;
    public static Worker[] workers = new Worker[3];
    static int windex = 0;

    public static CyclicBarrier barrier;

    public static volatile boolean firstPassDone = false;

    public static class Worker implements Runnable {
        public long parserStart;
        public long parserStop;
        List<String> files;
        public Worker(List<String> files) {
            this.files = files;
        }
        // @Override
        public void run() {
            parserStart = System.currentTimeMillis();
            // for (String f : files) {
            //     parseFile(f);
            // }
            parserStop = System.currentTimeMillis();
            try {
                barrier.await();
            }
            catch (InterruptedException ex) {
                return;
            }
            catch (BrokenBarrierException ex) {
                return;
            }
        }
    }

    public static void main(String[] args) {
        doAll(args);
    }

    public static void doAll(String[] args) {
        List<String> inputFiles = new ArrayList<String>();
        long start = System.currentTimeMillis();
        try {
            if (args.length > 0 ) {
                // for each directory/file specified on the command line
                // for(int i=0; i< args.length;i++) {
                //     if ( args[i].equals("-notree") ) notree = true;
                //     else if ( args[i].equals("-gui") ) gui = true;
                //     else if ( args[i].equals("-ptree") ) printTree = true;
                //     else if ( args[i].equals("-SLL") ) SLL = true;
                //     else if ( args[i].equals("-bail") ) bail = true;
                //     else if ( args[i].equals("-diag") ) diag = true;
                //     else if ( args[i].equals("-2x") ) x2 = true;
                //     else if ( args[i].equals("-threaded") ) threaded = true;
                //     else if ( args[i].equals("-quiet") ) quiet = true;
                //     if ( args[i].charAt(0)!='-' ) { // input file name
                //         inputFiles.add(args[i]);
                //     }
                // }
                List<String> javaFiles = new ArrayList<String>();
                // for (String fileName : inputFiles) {
                //     List<String> files = getFilenames(new File(fileName));
                //     javaFiles.addAll(files);
                // }
                doFiles(javaFiles);

//              DOTGenerator gen = new DOTGenerator(null);
//              String dot = gen.getDOT(Java8Parser._decisionToDFA[112], false);
//              System.out.println(dot);
//              dot = gen.getDOT(Java8Parser._decisionToDFA[81], false);
//              System.out.println(dot);

                if ( x2 ) {
                    System.gc();
                    System.out.println("waiting for 1st pass");
                    if ( threaded ) while ( !firstPassDone ) { } // spin
                    System.out.println("2nd pass");
                    doFiles(javaFiles);
                }
            }
            else {
                System.err.println("Usage: java Main <directory or file name>");
            }
        }
        catch(Exception e) {
            System.err.println("exception: "+e);
            e.printStackTrace(System.err);   // so we can get stack trace
        }
        long stop = System.currentTimeMillis();
//      System.out.println("Overall time " + (stop - start) + "ms.");
        System.gc();
    }

    public static void doFiles(List<String> files) /*throws Exception */{
        long parserStart = System.currentTimeMillis();
//      lexerTime = 0;
        if ( threaded ) {
            // barrier = new CyclicBarrier(3,new Runnable() {
            //     public void run() {
            //         report(); firstPassDone = true;
            //     }
            // });
            int chunkSize = files.size() / 3;  // 10/3 = 3
            int p1 = chunkSize; // 0..3
            int p2 = 2 * chunkSize; // 4..6, then 7..10
            workers[0] = new Worker(files.subList(0,p1+1));
            workers[1] = new Worker(files.subList(p1+1,p2+1));
            workers[2] = new Worker(files.subList(p2+1,files.size()));
            // new Thread(workers[0], "worker-"+windex++).start();
            // new Thread(workers[1], "worker-"+windex++).start();
            // new Thread(workers[2], "worker-"+windex++).start();
        }
        else {
            // for (String f : files) {
            //     parseFile(f);
            // }
            long parserStop = System.currentTimeMillis();
            System.out.println("Total lexer+parser time " + (parserStop - parserStart) + "ms.");
        }
    }

    private static void report() {
//      parserStop = System.currentTimeMillis();
//      System.out.println("Lexer total time " + lexerTime + "ms.");
        long time = 0;
        if ( workers!=null ) {
            // compute max as it's overlapped time
            for (Worker ws;;) {
                long wtime = w.parserStop - w.parserStart;
                time = Math.max(time,wtime);
                System.out.println("worker time " + wtime + "ms.");
            }
        }
        System.out.println("Total lexer+parser time " + time + "ms.");

        System.out.println("finished parsing OK");
        System.out.println(LexerATNSimulator.match_calls+" lexer match calls");
        System.out.println(ParserATNSimulator.predict_calls +" parser predict calls");
        System.out.println(ParserATNSimulator.retry_with_context +" retry_with_context after SLL conflict");
        System.out.println(ParserATNSimulator.retry_with_context_indicates_no_conflict +" retry sees no conflict");
        System.out.println(ParserATNSimulator.retry_with_context_predicts_same_alt +" retry predicts same alt as resolving conflict");
    }

/*??? return type*///    public static getFilenames(File f){
        // List<String> files = new ArrayList<String>();
        // getFilenames_(f, files);
        // return files;
    // }

    public static void getFilenames_(File f, List<String> files) /*throws Exception*/ {
        // If this is a directory, walk each file/dir in that directory
        if (f.isDirectory()) {
            String flist[] = f.list();
            for(int i=0; i < flist.length; i++) {
                getFilenames_(new File(f, flist[i]), files);
            }
        }

        // otherwise, if this is a java file, parse it!
        // else if ( ((f.getName().length()>5) &&
        //     f.getName().substring(f.getName().length()-5).equals(".java")) )
        // {
        //     files.add(f.getAbsolutePath());
        // }
    }

    // This method decides what action to take based on the type of
    //   file we are looking at
//  public static void doFile_(File f) throws Exception {
//      // If this is a directory, walk each file/dir in that directory
//      if (f.isDirectory()) {
//          String files[] = f.list();
//          for(int i=0; i < files.length; i++) {
//              doFile_(new File(f, files[i]));
//          }
//      }
//
//      // otherwise, if this is a java file, parse it!
//      else if ( ((f.getName().length()>5) &&
//          f.getName().substring(f.getName().length()-5).equals(".java")) )
//      {
//          System.err.println(f.getAbsolutePath());
//          parseFile(f.getAbsolutePath());
//      }
//  }

    public static void parseFile(String f) {
        try {
            if ( !quiet ) System.err.println(f);
            // Create a scanner that reads from the input stream passed to us
            Lexer lexer = new Java8Lexer(new ANTLRFileStream(f));

            CommonTokenStream tokens = new CommonTokenStream(lexer);
//          long start = System.currentTimeMillis();
//          tokens.fill(); // load all and check time
//          long stop = System.currentTimeMillis();
//          lexerTime += stop-start;

            // Create a parser that reads from the scanner
            Java8Parser parser = new Java8Parser(tokens);
            if ( diag ) parser.addErrorListener(new DiagnosticErrorListener());
            if ( bail ) parser.setErrorHandler(new BailErrorStrategy());
            // if ( SLL ) parser.getInterpreter().setPredictionMode(PredictionMode.SLL);

            // start parsing at the compilationUnit rule
            ParserRuleContext t = parser.compilationUnit();
            if ( notree ) parser.setBuildParseTree(false);
            if ( gui ) t.inspect(parser);
            if ( printTree ) System.out.println(t.toStringTree(parser));
        }
        catch (Exception e) {
            System.err.println("parser exception: "+e);
            e.printStackTrace();   // so we can get stack trace
        }
    }
}

