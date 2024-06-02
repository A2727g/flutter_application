import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/Screen/first_page.dart';
import 'package:flutter_application/utils/colors.dart';  
  
void main() { runApp(MyApp());}  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: MyHomePage(),  
      debugShowCheckedModeBanner: false,  
    );  
  }  
}  
  
class MyHomePage extends StatefulWidget {  
  @override  
  SplashScreenState createState() => SplashScreenState();  
}  
class SplashScreenState extends State<MyHomePage> {  
  @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 5),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  

                (context) => FirstScreen()  
            )  
         )  
    );  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      backgroundColor: primaryColors,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
        children:[ Center(
           child: Image.asset('assets/Gif/spl.gif',
          ),
        ),
        SizedBox(height: 10,),
       Center(
        //  child: Container(
        //   width: 250,
        //   height: 50,
        //   color: Colors.white,
        //    child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //      children: [
        //       decoration :BoxDecoration(
        //        child: Text("Book Your Order Now !",
        //        style: TextStyle(color: primaryColors,fontSize: 24,fontWeight: FontWeight.bold),),
        //      ),
        // ]),
        //  )
          child :Container(
           width: 260,
         height: 50,
         child: Center(
           child: Text("Book Your Order Now !",
            style: TextStyle(color: primaryColors,fontSize: 24,fontWeight: FontWeight.bold),),
         ),
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              
                      ),
          ),
       ),
      
      ]),
      
    );
  }  
} 