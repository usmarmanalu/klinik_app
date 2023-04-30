import 'package:flutter/material.dart';
import 'package:klinik_app/choice_login.dart';
import 'package:klinik_app/login_pegawai.dart';

import 'UI/UI_Poli/poli_page.dart';
import 'beranda.dart';
import 'buat_akun.dart';
import 'lupa_password.dart';

void main() => runApp(KlinikApp());

class KlinikApp extends StatelessWidget {
  const KlinikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Klinik App",
      home: LoginChoice(),
      theme: ThemeData(
        fontFamily: 'Spinnaker',
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal),
      ),
    );
  }
}
