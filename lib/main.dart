import 'package:flutter/material.dart';
import 'package:project1/components/cart_model1.dart';
import 'package:project1/intropage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => cartItems1(),
 
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),),);
    
  }
}