import 'package:flutter/material.dart';
import 'package:klinik_app/login_pegawai.dart';

class LoginChoice extends StatelessWidget {
  const LoginChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login Sebagai?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 42.0,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 62, 210, 161),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Pegawai",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 42.0,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 98, 153, 198),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Center(
                      child: Text(
                        "Pasien",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
