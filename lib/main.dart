// main.dart
import 'package:flutter/material.dart';
import 'package:untitled22/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Jadwal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),

    );
  }
}