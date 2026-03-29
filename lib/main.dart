import 'package:flutter/material.dart';
import 'package:freshtrack/pages/homepg.dart';



void main() {
  runApp(const FreshTrackApp());
}

class FreshTrackApp extends StatelessWidget {
  const FreshTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
