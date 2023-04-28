import 'package:flutter/material.dart';
import 'package:klinik_app/login_pegawai.dart';

class BuatAkun extends StatelessWidget {
  const BuatAkun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Buat Akun",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Silakan masukkan email & password Anda untuk membuat akun baru",
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: "Email Anda",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: "Password Anda",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: "Konformasi Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 42.0,
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: GestureDetector(
                // style: ButtonStyle(),
                onTap: () {
                  //
                },
                child: Center(
                  child: Text(
                    "Buat Akun",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Text(
                "Kembali ke Halaman Login",
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
