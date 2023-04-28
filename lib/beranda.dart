import 'package:flutter/material.dart';

import '../Widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Center(child: Text("Beranda")),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 30.0),
          padding: EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 10.0,
              opacity: 20.0,
              fit: BoxFit.fill,
              image: AssetImage('assets/bannerklinik.jpg'),
            ),
          ),
          height: 350.0,
          width: 350.0,
          child: Text(
            "Selamat Datang Di Klinik App",
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}
