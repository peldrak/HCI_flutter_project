// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:bbeep/gas.dart';

class ExpensesPerVehicle extends StatefulWidget {
  const ExpensesPerVehicle({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ExpensesPerVehicle();
}

class _ExpensesPerVehicle extends State<ExpensesPerVehicle> {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);

  /* Widget _buildGasList() {
    return SingleChildScrollView(
        child: ListView.separated(
            padding: const EdgeInsets.all(2.0),
            itemCount: _gasList.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(title: Text(_gasList[index].date));
            }));
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            shadowColor: const Color(0x00FFFFFF),
            iconTheme: const IconThemeData(color: Colors.black54),
            backgroundColor: BackgroundColor,
            elevation: 0));
  }
}

/*class Gas {
  String date;
  String cost;
  String? litrePrice;
  String? branch;

  Gas({required this.date, required this.cost, this.litrePrice, this.branch});
} */
