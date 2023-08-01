import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vips/Screen/home.dart';
import 'package:vips/starterpage.dart'; // Import firebase_core

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: StarterPage(),
    );
  }
}

// Your app's home page and other widgets can be defined here
