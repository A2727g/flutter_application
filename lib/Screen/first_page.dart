import 'package:flutter/material.dart';
import 'package:flutter_application/Screen/Home_page.dart';
import 'package:flutter_application/utils/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: primaryColors,
  body:SingleChildScrollView(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,),
          Image.asset("assets/first.png"),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child:  Text("Fat delivery at \n your door step",
            style: TextStyle(
              height: 1.2,
              fontSize: 35,color: Colors.white, fontWeight: FontWeight.bold),),
          ),
           const Padding(
            padding: EdgeInsets.all(10.0),
            child:  Text("Home delivery and online reservation \n system for resturants & cafe",
            style: TextStyle(
              fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            height: 55,
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              onPressed: (){
                  Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context)=> HomePage()));  
              }, 
            child: Text("Let's Explore",
              style: TextStyle(
              fontSize: 20,
              color: primaryColors,
               fontWeight: FontWeight.bold),
               )
               ),
               ),
          
    ]
    ,)
    ,),
  )
    );
  }
}
