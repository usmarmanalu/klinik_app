import 'package:flutter/material.dart';

import '../../Model/Pegawai/pegawai.dart';
import '../../Model/Pegawai/pegawai_detail.dart';
import 'pegawai_form.dart';
import 'pegawai_item.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text("Data Pegawai"),
        ),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PegawaiForm(),
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
            PegawaiItem(
              pegawai: Pegawai(
                nip: "83464324",
                nama_pegawai: "Elena Srimulyani",
              ),
              pegawaiDetailList: PegawaiDetailList(
                tanggal_lahir_pegawai: "",
                nomor_telephone_pegawai: "",
                email_pegawai: "",
                password_pegawai: "",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
