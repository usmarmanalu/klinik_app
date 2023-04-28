import 'package:flutter/material.dart';

import '../../Model/Pasien/pasien.dart';
import '../../Model/Pasien/pasien_detail.dart';
import 'pasien_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({super.key});

  @override
  State<PasienForm> createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _pasienRmCtrl = TextEditingController();
  final _namaPasienCtr = TextEditingController();
  final _tglLahirPasienCtrl = TextEditingController();
  final _noTelpPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text("Tambah Pasien"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                _fieldNoRMPasien(),
                _fieldNamaPasien(),
                _fieldtglLahirPasien(),
                _fieldNoTelephonePasien(),
                _fieldAlamatPasien(),
                SizedBox(
                  height: 20,
                ),
                _tombolSimpan()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _fieldNoRMPasien() {
    return TextFormField(
      decoration: InputDecoration(labelText: "No RM"),
      controller: _pasienRmCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'mohon di isi';
        }
        return null;
      },
    );
  }

  _fieldNamaPasien() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtr,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.name,
    );
  }

  _fieldtglLahirPasien() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Tanggal Lahir Pasien"),
      controller: _tglLahirPasienCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.datetime,
    );
  }

  _fieldNoTelephonePasien() {
    return TextFormField(
      decoration: InputDecoration(labelText: "No. Telephone Pasien"),
      controller: _noTelpPasienCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.phone,
    );
  }

  _fieldAlamatPasien() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Alamat Pasien"),
      controller: _alamatPasienCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.text,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent),
      onPressed: () {
        Pasien pasien = Pasien(
          nomor_rm: _pasienRmCtrl.text,
          nama: _namaPasienCtr.text,
        );
        PasienDetailList pasienDetailList = PasienDetailList(
          tanggal_lahir: _tglLahirPasienCtrl.text,
          nomor_telephone: _noTelpPasienCtrl.text,
          alamat: _alamatPasienCtrl.text,
        );
        if (_formKey.currentState!.validate()) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPasien(
                pasien: pasien,
                pasienDetailList: pasienDetailList,
              ),
            ),
          );
        }
      },
      child: Text("Simpan"),
    );
  }
}
