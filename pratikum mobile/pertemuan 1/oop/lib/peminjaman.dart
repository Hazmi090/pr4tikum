import 'anggota.dart';
import 'buku.dart';

class peminjaman extends buku {
  Anggota anggota;
  DateTime? tanggalPinjam;

  peminjaman(String judul, String pengarang, int tahunTerbit, this.anggota)
      : super(judul, pengarang, tahunTerbit) {
    tanggalPinjam = DateTime.now();
  }
  void info() {
    super.info();
    print('Dipinjam oleh: ${anggota.nama}, Tanggal pinjam ${tanggalPinjam}');
  }
}
