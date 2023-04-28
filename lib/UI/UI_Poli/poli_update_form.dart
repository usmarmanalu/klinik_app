import 'package:flutter/material.dart';
import 'package:klinik_app/UI/UI_Poli/poli_detail.dart';

import '../../Model/Poli/poli.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;
  const PoliUpdateForm({super.key, required this.poli});

  @override
  State<PoliUpdateForm> createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formkey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(
      () {
        _namaPoliCtrl.text = widget.poli.namaPoli;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ubah Poli")),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  _fieldNamaPoli(),
                  SizedBox(
                    height: 20,
                  ),
                  _tombolSimpan()
                ],
              )),
        ),
      ),
    );
  }

  _fieldNamaPoli() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
      autofocus: true,
      maxLines: null,
      validator: (value) {
        if (value!.isEmpty) {
          return 'mohon di isi';
        }
        return null;
      },
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.pop(context);
          if (_formkey.currentState!.validate()) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => PoliDetail(poli: poli),
              ),
            );
          }
        },
        child: Text("Simpan Perubahan"));
  }
}
