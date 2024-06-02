
// import 'package:flutter/material.dart';
// import 'package:flutter_application/Screen/first_page.dart';
// import 'package:flutter_application/utils/colors.dart';

// class SplashScreen extends StatefulWidget {
//   final Widget child;
//   const SplashScreen({super.key, required this.child});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {

//   @override
//   void initState() {
//     Future.delayed(const Duration(milliseconds: 3000)).then((value){
//       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => FirstScreen()), (route) => false);
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: primaryColors,
//       body: Center(
//         child: Image.asset("assets/spl.gif"),
//       ),
//     );
//   }
// }