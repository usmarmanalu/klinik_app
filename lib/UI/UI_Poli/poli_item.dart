import 'package:flutter/material.dart';
import 'package:klinik_app/UI/UI_Poli/poli_detail.dart';
import 'package:awesome_icons/awesome_icons.dart';

import '../../Model/Poli/poli.dart';

class PoliItem extends StatelessWidget {
  final Poli poli;
  const PoliItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 5.0,
        child: ListTile(
          leading: Icon(
            Icons.accessible,
            color: Colors.blue,
          ),
          title: Text("${poli.namaPoli}"),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliDetail(poli: poli),
          ),
        );
      },
    );
  }
}
