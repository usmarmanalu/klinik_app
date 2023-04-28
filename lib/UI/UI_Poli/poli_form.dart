import 'package:flutter/material.dart';
import 'package:klinik_app/Model/Poli/poli.dart';
import 'package:klinik_app/UI/UI_Poli/poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({super.key});

  @override
  State<PoliForm> createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("Tambah Poli")),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                _fieldNamaPoli(),
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

  _fieldNamaPoli() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
      autofocus: true,
      maxLines: null,
      keyboardType: TextInputType.text,
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
        if (formKey.currentState!.validate()) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PoliDetail(poli: poli),
            ),
          );
        }
      },
      child: Text("Simpan"),
    );
  }
}
