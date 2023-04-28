import 'package:flutter/material.dart';

import '../../Model/Pasien/pasien.dart';
import '../../Model/Pasien/pasien_detail.dart';
import 'pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;
  final PasienDetailList pasienDetailList;
  const PasienUpdateForm(
      {super.key, required this.pasien, required this.pasienDetailList});

  @override
  State<PasienUpdateForm> createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formkey = GlobalKey<FormState>();
  final _myControllerRm = TextEditingController();
  final _myControllerNama = TextEditingController();
  late TextEditingController _tanggalLlahirCtrl = TextEditingController();
  late TextEditingController _nomor_telephoneCtrl = TextEditingController();
  late TextEditingController _alamatCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _myControllerRm.text = widget.pasien.nomor_rm;
    _myControllerNama.text = widget.pasien.nama;
    _tanggalLlahirCtrl.text = tanggal_lahir;
    _nomor_telephoneCtrl.text = nomor_telephone;
    _alamatCtrl.text = alamat;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Ubah Pasien")),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: _formkey,
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
      controller: _myControllerRm,
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
    return TextField(
      decoration: InputDecoration(labelText: "Nama Pasien"),
      controller: _myControllerNama,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.name,
    );
  }

  _fieldtglLahirPasien() {
    return TextField(
      decoration: InputDecoration(labelText: "Tanggal Lahir Pasien"),
      controller: _tanggalLlahirCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.datetime,
    );
  }

  _fieldNoTelephonePasien() {
    return TextField(
      decoration: InputDecoration(labelText: "No. Telephone"),
      controller: _nomor_telephoneCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.phone,
    );
  }

  _fieldAlamatPasien() {
    return TextField(
      decoration: InputDecoration(labelText: "Alamat Pasien"),
      controller: _alamatCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.text,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: () {
        Pasien pasien = new Pasien(
          nomor_rm: _myControllerRm.text,
          nama: _myControllerNama.text,
        );
        PasienDetailList pasienDetailList = new PasienDetailList(
          tanggal_lahir: _tanggalLlahirCtrl.text,
          nomor_telephone: _nomor_telephoneCtrl.text,
          alamat: _alamatCtrl.text,
        );
        if (_formkey.currentState!.validate()) {
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPasien(
                pasien: widget.pasien,
                pasienDetailList: widget.pasienDetailList,
              ),
            ),
          );
        }
      },
      child: Text("Simpan Perubahan"),
    );
  }
}
