import 'package:flutter/material.dart';
import 'package:klinik_app/UI/UI_Poli/poli_page.dart';

import '../UI/UI_Pasien/pasien_page.dart';
import '../UI/UI_Pegawai/pegawai_page.dart';
import '../beranda.dart';
import '../choice_login.dart';
import '../login_pegawai.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Center(
                  child: Text(
                    "Klinik App",
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),
              ),
              accountName: Text("Admin Klinik App"),
              accountEmail: Text(
                "admin@gmail.com",
                style: TextStyle(color: Colors.black45),
              )),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text("Beranda"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Beranda(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.black,
            indent: 25.0,
            endIndent: 25.0,
          ),
          ListTile(
            leading: Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            title: Text("Poli"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PoliPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.redAccent,
            ),
            title: Text("Pegawai"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PegawaiPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.account_box_sharp,
              color: Colors.orange,
            ),
            title: Text("Pasien"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasienPage(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.black,
            indent: 25.0,
            endIndent: 25.0,
          ),
          ListTile(
            leading: Icon(
              Icons.logout_rounded,
              color: Colors.black,
            ),
            title: Text("Keluar"),
            onTap: () {         
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginChoice(),
                ),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
