import 'package:flutter/material.dart';
import 'package:klinik_app/login.dart';

import 'UI/UI_Poli/poli_page.dart';
import 'beranda.dart';

void main() => runApp(KlinikApp());

class KlinikApp extends StatelessWidget {
  const KlinikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Klinik App",
      home: Login(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal),
      ),
    );
  }
}
