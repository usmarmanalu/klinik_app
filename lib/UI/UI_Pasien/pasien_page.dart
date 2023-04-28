import 'package:flutter/material.dart';

import '../../Model/Pasien/pasien.dart';
import '../../Model/Pasien/pasien_detail.dart';
import 'pasien_form.dart';
import 'pasien_item.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text("Data Pasien"),
        ),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasienForm(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            PasienItem(
              pasien: Pasien(
                nomor_rm: "12345678",
                nama: "Agus Budianto",
              ),
              pasienDetailList: PasienDetailList(
                tanggal_lahir: "",
                nomor_telephone: "",
                alamat: "",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
