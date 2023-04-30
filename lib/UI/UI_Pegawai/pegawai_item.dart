import 'package:flutter/material.dart';

import '../../Model/Pegawai/pegawai.dart';
import '../../Model/Pegawai/pegawai_detail.dart';
import 'pegawai_detail.dart';

class PegawaiItem extends StatelessWidget {
  final PegawaiDetailList pegawaiDetailList;
  final Pegawai pegawai;
  const PegawaiItem(
      {super.key, required this.pegawai, required this.pegawaiDetailList});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 10.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              minLeadingWidth: 6,
              horizontalTitleGap: 9,
              leading: Icon(
                Icons.edit_document,
                color: Colors.deepOrange[300],
              ),
              title: Text(
                "nip :",
              ),
              trailing: Text("${pegawai.nip}"),
            ),
            ListTile(
              minLeadingWidth: 6,
              horizontalTitleGap: 9,
              leading: Icon(
                Icons.person,
                color: Colors.blueGrey[600],
              ),
              title: Text("nama :"),
              trailing: Text("${pegawai.nama_pegawai}"),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPegawai(
                pegawai: pegawai, pegawaiDetailList: pegawaiDetailList),
          ),
        );
      },
    );
  }
}
