// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:bbeep/gas.dart';
import 'package:bbeep/tires.dart';
import 'package:bbeep/service.dart';
import 'package:bbeep/taxes.dart';
import 'package:bbeep/other.dart';

class AddNewExpense extends StatefulWidget {
  const AddNewExpense({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddNewExpense();
}

class _AddNewExpense extends State<AddNewExpense> {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: BackgroundColor,
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.clear_rounded,
                color: Colors.black54,
                size: 40,
              ),
              tooltip: 'Cancel',
              onPressed: () {
                Navigator.pop(context);
              }),
          const SizedBox(width: 15),
        ],
        shadowColor: const Color(0x00FFFFFF),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 80),
          const Center(
              child: Text('Add new expense',
                  style: TextStyle(fontSize: 24, fontFamily: 'RobotoMono'))),
          const SizedBox(height: 40),
          SizedBox(
            width: 400.0,
            height: 50.0,
            child: ElevatedButton(
                child: const Text('Gas',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'RobotoMono')),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xB3A5A6F6)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Gas()));
                }),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 400.0,
            height: 50.0,
            child: ElevatedButton(
                child: const Text('Service',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'RobotoMono')),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xB3A5A6F6)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Service()));
                }),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 400.0,
            height: 50.0,
            child: ElevatedButton(
                child: const Text('Taxes',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'RobotoMono')),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xB3A5A6F6)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Taxes()));
                }),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 400.0,
            height: 50.0,
            child: ElevatedButton(
                child: const Text('Tires',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'RobotoMono')),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xB3A5A6F6)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Tires()));
                }),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 400.0,
            height: 50.0,
            child: ElevatedButton(
                child: const Text('Other',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'RobotoMono')),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xB3A5A6F6)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Other()));
                }),
          ),
        ],
      ),
    );
  }
}
