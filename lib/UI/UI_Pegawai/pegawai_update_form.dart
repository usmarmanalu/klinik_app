import 'package:flutter/material.dart';
import 'package:klinik_app/UI/UI_Pegawai/pegawai_detail.dart';

import '../../Model/Pegawai/pegawai.dart';
import '../../Model/Pegawai/pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;
  final PegawaiDetailList pegawaiDetailList;
  const PegawaiUpdateForm(
      {super.key, required this.pegawai, required this.pegawaiDetailList});

  @override
  State<PegawaiUpdateForm> createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formkey = GlobalKey<FormState>();
  final _myControllerNip = TextEditingController();
  final _myControllerNama = TextEditingController();
  late TextEditingController _tanggalLlahirCtrl = TextEditingController();
  late TextEditingController _nomor_telephoneCtrl = TextEditingController();
  late TextEditingController _emailCtrl = TextEditingController();
  late TextEditingController _passwordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _myControllerNip.text = widget.pegawai.nip;
    _myControllerNama.text = widget.pegawai.nama_pegawai;
    _tanggalLlahirCtrl.text = tanggal_lahir_pegawai;
    _nomor_telephoneCtrl.text = nomor_telephone_pegawai;
    _emailCtrl.text = email_pegawai;
    _passwordCtrl.text = password_pegawai;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ubah Pegawai")),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                _fieldNipPegawai(),
                _fieldNamaPegawai(),
                _fieldtglLahirPegawai(),
                _fieldNoTelephonePegawai(),
                _fieldEmailPegawai(),
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
      controller: _myControllerNip,
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

  _fieldNamaPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Nama Pegawai"),
      controller: _myControllerNama,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.name,
    );
  }

  _fieldtglLahirPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Tanggal Lahir Pegawai"),
      controller: _tanggalLlahirCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.datetime,
    );
  }

  _fieldNoTelephonePegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "No. Telephone Pegawai"),
      controller: _nomor_telephoneCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.phone,
    );
  }

  _fieldEmailPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Email Pegawai"),
      controller: _emailCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.text,
    );
  }

  _fieldPasswordPegawai() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password Pegawai"),
      controller: _passwordCtrl,
      maxLines: null,
      autofocus: true,
      keyboardType: TextInputType.text,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
      onPressed: () {
        Pegawai pegawai = new Pegawai(
          nip: _myControllerNip.text,
          nama_pegawai: _myControllerNama.text,
        );
        PegawaiDetailList pegawaiDetailList = new PegawaiDetailList(
          tanggal_lahir_pegawai: _tanggalLlahirCtrl.text,
          nomor_telephone_pegawai: _nomor_telephoneCtrl.text,
          email_pegawai: _emailCtrl.text,
          password_pegawai: _passwordCtrl.text,
        );
        if (_formkey.currentState!.validate()) {
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPegawai(
                pegawai: widget.pegawai,
                pegawaiDetailList: widget.pegawaiDetailList,
              ),
            ),
          );
        }
      },
      child: Text("Simpan Perubahan"),
    );
  }
}
