import 'package:flutter/material.dart';
import 'package:new_rental_car/const/theme.dart';
import 'package:new_rental_car/view/home/home.dart';
void main() {
  runApp( const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent_A_Car',
      theme: light(),
      home: const HomeScreen(),
    );
  }
}
