import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: MyHomePage() ,
    );
  }
}

class MyHomePage extends StatefulWidget{
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor;



  //Change the variable @backgroundColor
  void changeColor(){
    setState(() {
      backgroundColor  = genRandomColor();
    });
  }



  /*
  Function to generate Random Color from RGB;
  returns a new random Color
   */
  Color genRandomColor(){
    var rng = new Random();
    return Color.fromARGB(100, rng.nextInt(255), rng.nextInt(255), rng.nextInt(255));
  }

  @override
  Widget build(BuildContext context) {

    return  GestureDetector(

onTap: ()=>changeColor(),

      child:Scaffold(
    backgroundColor: backgroundColor ,
      body:Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hey there', style: TextStyle(fontStyle: FontStyle.italic,height: 10, fontSize: 24),
            ),
          ],
        ),
        ),
        ),
    );
  }


}



