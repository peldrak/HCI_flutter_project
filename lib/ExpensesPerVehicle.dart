// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpensesPerVehicle extends StatefulWidget {
  String title;
  String date;
  String cost;

  ExpensesPerVehicle(
      {Key? key, required this.title, required this.date, required this.cost})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ExpensesPerVehicle(title, date, cost);
}

class _ExpensesPerVehicle extends State<ExpensesPerVehicle> {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);
  String title;
  String date;
  String cost;
  _ExpensesPerVehicle(this.title, this.date, this.cost);

  Widget _buildList() {
    return SingleChildScrollView(
        child: ListView.separated(
            padding: const EdgeInsets.all(2.0),
            itemCount: 3,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(title: Text(title));
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            shadowColor: const Color(0x00FFFFFF),
            iconTheme: const IconThemeData(color: Colors.black54),
            backgroundColor: BackgroundColor,
            elevation: 0),
        body: _buildList());
  }
}
