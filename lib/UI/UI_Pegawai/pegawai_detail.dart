import 'package:flutter/material.dart';

import '../../Model/Pegawai/pegawai.dart';
import '../../Model/Pegawai/pegawai_detail.dart';

import 'pegawai_page.dart';
import 'pegawai_update_form.dart';

class DetailPegawai extends StatefulWidget {
  final Pegawai pegawai;
  final PegawaiDetailList pegawaiDetailList;
  const DetailPegawai(
      {super.key, required this.pegawai, required this.pegawaiDetailList});

  @override
  State<DetailPegawai> createState() => _DetailPegawaiState();
}

class _DetailPegawaiState extends State<DetailPegawai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text("Pegawai Detail"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.edit_document,
                        color: Colors.teal,
                      ),
                      title: Text("nip :"),
                      trailing: Text("${widget.pegawai.nip}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                      ),
                      title: Text("nama :"),
                      trailing: Text("${widget.pegawai.nama_pegawai}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.date_range,
                        color: Colors.grey,
                      ),
                      title: Text("tgl lahir :"),
                      trailing: Text("${tanggal_lahir_pegawai}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      title: Text("no. telp :"),
                      trailing: Text("${nomor_telephone_pegawai}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.email,
                        color: Colors.brown,
                      ),
                      title: Text("email :"),
                      trailing: Text(
                        " ${email_pegawai}",
                        style: TextStyle(
                          fontSize: 13.5,
                        ),
                      ),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      title: Text("password :"),
                      trailing: Text(
                        " ${password_pegawai}",
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _tombolUbah(),
                _tombolHapus(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiUpdateForm(
                pegawai: widget.pegawai,
                pegawaiDetailList: widget.pegawaiDetailList),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: Text("Ubah"),
    );
  }

  _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: Text("Yakin Ingin  Menghapus Data ini?"),
          actions: [
            // Tombol YA
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PegawaiPage()));
              },
              child: Text("YA"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            // Tombol Batal
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Tidak"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: Text("Hapus"),
    );
  }
}
