import 'package:flutter/material.dart';

class Baris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Belajar Kolom'), // Judul aplikasi
      ),
      body: Container(
        color: Colors.red, // Warna latar belakang Container
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center, // Menengahkan elemen di Row
          children: [
            const Text(
              'Flutter 01',
              style: TextStyle(
                  fontSize: 30, color: Color(0xFFFFEE58)), // Warna kuning muda
            ),
            const SizedBox(
              width: 20, // Jarak antar elemen
            ),
            const Text(
              'Flutter 02',
              style: TextStyle(
                  fontSize: 30, color: Color(0xFFFFEB3B)), // Warna kuning
            ),
            const SizedBox(
              width: 20, // Jarak antar elemen
            ),
            const Text(
              'Flutter 03',
              style: TextStyle(
                  fontSize: 30, color: Color(0xFFFDD835)), // Warna kuning tua
            ),
          ],
        ),
      ),
    );
  }
}
