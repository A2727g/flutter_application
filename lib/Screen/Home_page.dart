import 'package:flutter/material.dart';
import 'package:flutter_application/Screen/header_part.dart';
import 'package:flutter_application/Screen/items_display.dart';
import 'package:flutter_application/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
// for bootom naviagation
      bottomNavigationBar: BottomNavigationBar(
      showSelectedLabels: false,
      selectedItemColor: primaryColors,  
      unselectedItemColor: Colors.green[200],
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,
        size: 30,),label: 'Home'),
             BottomNavigationBarItem(icon: Icon(Icons.chat,),label: 'Chat'),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,),label: 'cart'),     
           BottomNavigationBarItem(icon: Icon(Icons.notifications,),label: 'Notification'),
           BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'favorite'),      

      

      ],),
      body: ListView(
        children: [
          SizedBox(
            height: 15,),
          // for header part
          HeaderPart(),

          ItemsDisplay(),
        ],
      ),

      

    );
  }
}