class Anggota {
  String _nama;
  String _id;

  Anggota(this._nama, this._id);

  String get nama => _nama;
  String get id => _id;

  void info() {
    print('Nama Anggota: $_nama, ID: $_id');
  }
}
