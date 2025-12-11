import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/home_screen.dart';
import 'models/cart.dart';
import 'const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize CartController
    Get.put(CartController());

    return GetMaterialApp(
      title: 'eMart - Simple E-commerce',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: purpleColor,
          elevation: 0,
          centerTitle: true,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: purpleColor,
          ),
        ),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
