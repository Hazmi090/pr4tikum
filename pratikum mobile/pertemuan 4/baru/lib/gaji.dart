import 'package:flutter/material.dart';

class Gaji {
  String? golongan;
  String? status;
  int masakerja = 0;

  int tunjGapok() {
    int tunjangan = 0;
    if (golongan == "I") {
      tunjangan = 2500000;
    } else if (golongan == "II") {
      tunjangan = 3000000;
    } else if (golongan == "III") {
      tunjangan = 3500000;
    } else {
      tunjangan = 4000000;
    }
    return tunjangan;
  }

  int tunjStatus() {
    int tunjangan = 0;
    if (status == "Menikah") {
      tunjangan = 1000000;
    } else {
      tunjangan = 0;
    }
    return tunjangan;
  }

  int tunjMasaKerja() {
    int tunjangan = 0;
    if (masakerja >= 5 && masakerja <= 10) {
      tunjangan = 500000;
    } else if (masakerja > 10) {
      tunjangan = 1000000;
    } else {
      tunjangan = 0;
    }
    return tunjangan;
  }

  int hitungGaji() {
    return tunjGapok() + tunjStatus() + tunjMasaKerja();
  }
}

class GajiScreen extends StatefulWidget {
  const GajiScreen({Key? key}) : super(key: key);

  @override
  State<GajiScreen> createState() => _GajiScreenState();
}

class _GajiScreenState extends State<GajiScreen> {
  final Gaji gaji = Gaji();
  String result = "Belum dihitung";

  // Daftar opsi untuk ComboBox
  final List<String> golonganList = ["I", "II", "III", "IV"];
  final List<String> statusList = ["Menikah", "Belum Menikah"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perhitungan Gaji"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown untuk Golongan
            const Text("Pilih Golongan:"),
            DropdownButton<String>(
              isExpanded: true,
              value: gaji.golongan,
              hint: const Text("Pilih Golongan"),
              items: golonganList.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  gaji.golongan = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Dropdown untuk Status
            const Text("Pilih Status:"),
            DropdownButton<String>(
              isExpanded: true,
              value: gaji.status,
              hint: const Text("Pilih Status"),
              items: statusList.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  gaji.status = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // TextField untuk Masa Kerja
            const Text("Masa Kerja (tahun):"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masa Kerja",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                gaji.masakerja = int.tryParse(value) ?? 0;
              },
            ),
            const SizedBox(height: 20),

            // Tombol Hitung Gaji
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = "Total Gaji: Rp ${gaji.hitungGaji()}";
                  });
                },
                child: const Text("Hitung Gaji"),
              ),
            ),
            const SizedBox(height: 20),

            // Menampilkan hasil
            Center(
              child: Text(
                result,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
