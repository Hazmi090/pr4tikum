import 'package:flutter/material.dart';

class Contohstatefullwidget extends StatefulWidget {
  @override
  _ContohstatefullwidgetState createState() => _ContohstatefullwidgetState();
}

class _ContohstatefullwidgetState extends State<Contohstatefullwidget> {
  final TextEditingController _controller = TextEditingController();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Input')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                controller: _controller,
                decoration: const InputDecoration(labelText: 'Masukkan Nama'),
                onChanged: (value) {
                  setState(() {
                    _name = value; // Memperbarui state saat input berubah
                  });
                }),

            // Menampilkan nama langsung
            Text(
              'Nama: $_name',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
