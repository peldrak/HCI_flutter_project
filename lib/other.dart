// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:bbeep/ExpensesPerVehicle.dart';

class Other extends StatefulWidget {
  const Other({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddOther();
}

class _AddOther extends State<Other> {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _dateController = TextEditingController();
  final _costController = TextEditingController();
  final _detailsController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    _costController.dispose();
    _nameController.dispose();
    _detailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        appBar: AppBar(
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
        body: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                      child: Text('Other',
                          style: TextStyle(
                              fontSize: 24, fontFamily: 'RobotoMono'))),
                  const SizedBox(height: 40),
                  TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: 'RobotoMono',
                            color: Colors.black54),
                        fillColor: Color(0xB5A5A6F6),
                        filled: true,
                      ),
                      controller: _nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name field cannot be empty!';
                        }
                        return null;
                      }),
                  const SizedBox(height: 20),
                  TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'Date',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: 'RobotoMono',
                            color: Colors.black54),
                        fillColor: Color(0xB5A5A6F6),
                        filled: true,
                      ),
                      controller: _dateController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Date field cannot be empty!';
                        }
                        return null;
                      }),
                  const SizedBox(height: 20),
                  TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'Cost',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: 'RobotoMono',
                            color: Colors.black54),
                        fillColor: Color(0xB5A5A6F6),
                        filled: true,
                      ),
                      controller: _costController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Cost field cannot be empty!';
                        }
                        return null;
                      }),
                  const SizedBox(height: 20),
                  TextField(
                    minLines: 3,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'Details',
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: 'RobotoMono',
                          color: Colors.black54),
                      fillColor: Color(0xB5A5A6F6),
                      filled: true,
                    ),
                    controller: _detailsController,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 100.0,
                    height: 30.0,
                    child: ElevatedButton(
                        child: const Text('Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'RobotoMono')),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black54),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final entry = OtherEntry(
                                date: _dateController.text,
                                cost: _costController.text,
                                name: _nameController.text,
                                details: _detailsController.text);
                          }
                        }),
                  )
                ])));
  }
}

class OtherEntry {
  String date;
  String cost;
  String name;
  String? details;

  OtherEntry(
      {required this.date,
      required this.cost,
      required this.name,
      this.details});
}
