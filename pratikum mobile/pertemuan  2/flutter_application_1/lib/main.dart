import 'package:flutter/material.dart';
// Pastikan file ini ada

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Belajar Widget',
      home: RadioButton01(), // Pastikan RadioButton01 adalah widget yang valid
    );
  }
}
