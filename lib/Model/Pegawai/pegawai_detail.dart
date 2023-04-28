import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PegawaiDetailList {
  String tanggal_lahir_pegawai,
      nomor_telephone_pegawai,
      email_pegawai,
      password_pegawai;

  PegawaiDetailList(
      {required this.tanggal_lahir_pegawai,
      required this.nomor_telephone_pegawai,
      required this.email_pegawai,
      required this.password_pegawai});
}

late String tanggal_lahir_pegawai = "24 Desember 1988";
late String nomor_telephone_pegawai = "+62 81209876543";
late String email_pegawai = "elenasrimulyani@gmail.com";
late String password_pegawai = "098765abcd";
