import 'package:flutter/material.dart';
import 'package:flutter_application/utils/colors.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key});

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body:Column(
        children:[ Center(
          child: Image.asset("assets/Gif/final.gif",    
          ),),
          SizedBox(
            height: 20,
          ),
          Center(
             child :Container(
           width: 260,
         height: 50,
         child: Center(
           child: Text("Suceessful!",
            style: TextStyle(color: primaryColors,fontSize: 24,fontWeight: FontWeight.bold),),
         ),
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              
                      ),
          ),
          )
      ]) ,
      
    );
  }
}