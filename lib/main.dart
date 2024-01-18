import 'package:flutter/material.dart';
import 'package:testapp/screens/AllButtons.dart';
import 'package:testapp/screens/AllWidgets.dart';
import 'package:testapp/screens/onboarding.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

// Center => aligns its child widget to the center of available space of screen
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: AllWidgets(),
    );
  }
}
