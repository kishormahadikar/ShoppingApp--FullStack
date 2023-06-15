// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:shopapp/screens/product_detail_screen.dart';

// class SplashMain extends StatefulWidget {
//   @override
//   State<SplashMain> createState() => _SplashMainState();
// }

// class _SplashMainState extends State<SplashMain> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProductDetailScreen(),
//           ));
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black87,
//         child: const Center(
//           child: Text(
//             'ShoppingApp',
//             style: TextStyle(
//                 color: Colors.red, fontWeight: FontWeight.w900, fontSize: 35),
//           ),
//         ),
//       ),
//     );
//   }
// }

