import 'package:flutter/material.dart';
import 'package:testapp/screens/AllButtons.dart';
import 'package:testapp/screens/AllWidgets.dart';
import 'package:testapp/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.blue,
        fontFamily: 'Poppins',
        textTheme:const TextTheme(
          displayLarge: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
          displayMedium:  TextStyle(
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
          displaySmall: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
              color: Colors.black
          ),

        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const AllWidgets(),
    );
  }
}


