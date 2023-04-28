import 'package:flutter/material.dart';

import '../../Model/Pegawai/pegawai.dart';
import '../../Model/Pegawai/pegawai_detail.dart';
import 'pegawai_detail.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({super.key});

  @override
  State<PegawaiForm> createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipPegawaiCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _tglLahirPegawaiCtrl = TextEditingController();
  final _noTelpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passwordPegawaiCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text("Tambah Pegawai"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                _fieldNipPegawai(),
                _fieldNamaPegawai(),
                _fieldtglLahirPegawai(),
                _fieldNoTelephonePegawai(),
                _fieldEmailPegawai(),
                _fieldPasswordPegawai(),
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

  _fieldNipPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Nip"),
      controller: _nipPegawaiCtrl,
      keyboardType: TextInputType.number,
      maxLines: null,
      autofocus: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'mohon di isi';
        }
        return null;
      },
    );
  }

  _fieldNamaPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.name,
    );
  }

  _fieldtglLahirPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Tanggal Lahir Pegawai"),
      controller: _tglLahirPegawaiCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.datetime,
    );
  }

  _fieldNoTelephonePegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "No. Telp Pegawai"),
      controller: _noTelpPegawaiCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.phone,
    );
  }

  _fieldEmailPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Email Pegawai"),
      controller: _emailPegawaiCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.text,
    );
  }

  _fieldPasswordPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password Pegawai"),
      controller: _passwordPegawaiCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.text,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent[800]),
      onPressed: () {
        Pegawai pegawai = Pegawai(
          nip: _nipPegawaiCtrl.text,
          nama_pegawai: _namaPegawaiCtrl.text,
        );
        PegawaiDetailList pegawaiDetailList = PegawaiDetailList(
          tanggal_lahir_pegawai: _tglLahirPegawaiCtrl.text,
          nomor_telephone_pegawai: _noTelpPegawaiCtrl.text,
          email_pegawai: _emailPegawaiCtrl.text,
          password_pegawai: _passwordPegawaiCtrl.text,
        );
        if (_formKey.currentState!.validate()) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPegawai(
                pegawai: pegawai,
                pegawaiDetailList: pegawaiDetailList,
              ),
            ),
          );
        }
      },
      child: Text("Simpan"),
    );
  }
}
