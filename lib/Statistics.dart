// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: const Color(0x00FFFFFF),
          iconTheme: const IconThemeData(color: Colors.black54),
          backgroundColor: BackgroundColor,
          elevation: 0,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Center(
                  child: Text('Annual Total Expenses',
                      style:
                          TextStyle(fontSize: 24, fontFamily: 'RobotoMono'))),
              const SizedBox(height: 5),
              Center(
                  child: Image.asset('assets/icons/bar-graph.png',
                      width: 200, height: 100)),
              const SizedBox(height: 40),
              const Center(
                  child: Text('Gas cost per week',
                      style:
                          TextStyle(fontSize: 24, fontFamily: 'RobotoMono'))),
              const SizedBox(height: 5),
              Center(
                  child: Image.asset('assets/icons/chart.png',
                      width: 200, height: 100)),
              const SizedBox(height: 40),
              const Center(
                  child: Text('Service cost per year',
                      style:
                          TextStyle(fontSize: 24, fontFamily: 'RobotoMono'))),
              const SizedBox(height: 5),
              Center(
                  child: Image.asset('assets/icons/pie-chart.png',
                      width: 200, height: 100)),
            ]));
  }
}
