import 'package:flutter/material.dart';

import '../../Model/Pasien/pasien.dart';
import '../../Model/Pasien/pasien_detail.dart';
import 'pasien_page.dart';
import 'pasien_update_form.dart';

class DetailPasien extends StatefulWidget {
  final Pasien pasien;
  final PasienDetailList pasienDetailList;
  const DetailPasien(
      {super.key, required this.pasien, required this.pasienDetailList});

  @override
  State<DetailPasien> createState() => _DetailPasienState();
}

class _DetailPasienState extends State<DetailPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text("Pasien Detail"),
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
                      title: Text("nomor rm :"),
                      trailing: Text("${widget.pasien.nomor_rm}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                      ),
                      title: Text("nama :"),
                      trailing: Text("${widget.pasien.nama}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.date_range,
                        color: Colors.redAccent,
                      ),
                      title: Text("tgl lahir :"),
                      trailing: Text("${tanggal_lahir}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      title: Text("no. telp :"),
                      trailing: Text("${nomor_telephone}"),
                    ),
                    ListTile(
                      minLeadingWidth: 6,
                      horizontalTitleGap: 9,
                      leading: Icon(
                        Icons.location_city,
                        color: Colors.yellow,
                      ),
                      title: Text(
                        "alamat :",
                        maxLines: 1,
                      ),
                      trailing: Text(
                        " ${alamat}",
                        style: TextStyle(fontSize: 12),
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
            builder: (context) => PasienUpdateForm(
              pasien: widget.pasien,
              pasienDetailList: widget.pasienDetailList,
            ),
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
                    MaterialPageRoute(builder: (context) => PasienPage()));
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
