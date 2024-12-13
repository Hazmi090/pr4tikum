import 'package:flutter/material.dart';

class Studikasus01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Column, Row, and Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scroll Demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.list, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Daftar Anggota',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // Daftar isi
              for (int i = 1; i <= 50; i++)
                ListTile(
                  title: Text('Anggota $i'),
                  subtitle: Text('Informasi tentang Anggota $i'),
                  leading: const Icon(Icons.person),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
