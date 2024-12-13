class buku {
  final String _judul;
  final String _pengarang;
  final int _tahunTerbit;

  buku(this._judul, this._pengarang, this._tahunTerbit);

  String get judul => _judul;
  String get pengarang => _pengarang;
  int get tahunTerbit => _tahunTerbit;

  void info() {
    print(
        'judul: $_judul, pengarang: $_pengarang, Tahun Terbit: $_tahunTerbit');
  }
}
