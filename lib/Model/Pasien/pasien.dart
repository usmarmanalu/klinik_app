class Pasien {
  num? id;
  String nomor_rm, nama;

  Pasien({
    this.id,
    required this.nomor_rm,
    required this.nama,
  });
}

class PasienDetail {
  String tanggal_lahir, nomor_telephone, alamat;
  PasienDetail(
      {required this.tanggal_lahir,
      required this.nomor_telephone,
      required this.alamat});
}
