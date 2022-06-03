import 'dart:core';

class Sekolah {
  Sekolah({
    required this.id,
    required this.npsn,
    required this.nama,
    required this.alamat,
    required this.kodepos,
    required this.desa,
    required this.kecamatan,
    required this.provinsi,
    required this.kabupaten,
    required this.status,
    required this.jenjang,
  });

  String id;
  String npsn;
  String nama;
  String alamat;
  String kodepos;
  String desa;
  String kecamatan;
  String provinsi;
  String kabupaten;
  String status;
  String jenjang;

  factory Sekolah.fromJson(Map<String, dynamic> json) => Sekolah(
    id        : json["id"] ?? 'null',
    npsn      : json["npsn"] ?? 'null',
    nama      : json["nama"] ?? 'null',
    alamat    : json["alamat"] ?? 'null',
    kodepos   : json["kodepos"] ?? 'null',
    desa      : json["desa"] ?? 'null',
    kecamatan : json["kecamatan"] ?? 'null',
    provinsi  : json["provinsi"] ?? 'null',
    kabupaten : json["kabupaten"] ?? 'null',
    status    : json["status"] ?? 'null',
    jenjang   : json["jenjang"] ?? 'null',
  );
}
