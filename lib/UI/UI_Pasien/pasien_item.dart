import 'package:flutter/material.dart';

import '../../Model/Pasien/pasien.dart';
import '../../Model/Pasien/pasien_detail.dart';
import 'pasien_detail.dart';

class PasienItem extends StatelessWidget {
  final PasienDetailList pasienDetailList;
  final Pasien pasien;
  const PasienItem(
      {super.key, required this.pasien, required this.pasienDetailList});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text("no. rm :"),
              leading: Icon(
                Icons.edit_document,
                color: Colors.deepOrange[200],
              ),
              trailing: Text("${pasien.nomor_rm}"),
            ),
            ListTile(
              leading: Icon(
                Icons.person_rounded,
                color: Colors.teal[900],
              ),
              title: Text(
                "nama : ",
              ),
              trailing: Text("${pasien.nama}"),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPasien(
                pasien: pasien, pasienDetailList: pasienDetailList),
          ),
        );
      },
    );
  }
}
