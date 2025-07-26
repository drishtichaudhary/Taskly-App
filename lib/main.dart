import 'package:flutter/material.dart';
import './pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter("hive_boxes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskly',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      themeMode: ThemeMode.light,
      home: Scaffold(
        backgroundColor: Colors.grey[100], // Optional: background color around the phone
        body: Center(
          child: Container(
            width: 360,
            height: 640,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(12), // Optional: rounded corners like a phone
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: HomePage(),
            ),
          ),
        ),
      ),
    );
  }
}