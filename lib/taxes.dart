// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:bbeep/ExpensesPerVehicle.dart';

class Taxes extends StatefulWidget {
  const Taxes({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddTaxes();
}

class _AddTaxes extends State<Taxes> {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);
  final _formKey = GlobalKey<FormState>();

  final _dateController = TextEditingController();
  final _costController = TextEditingController();
  final _detailsController = TextEditingController();
  final _nextPaymentController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    _costController.dispose();
    _detailsController.dispose();
    _nextPaymentController.dispose();
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
                      child: Text('Taxes',
                          style: TextStyle(
                              fontSize: 24, fontFamily: 'RobotoMono'))),
                  const SizedBox(height: 40),
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
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'Date of next payment',
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: 'RobotoMono',
                          color: Colors.black54),
                      fillColor: Color(0xB5A5A6F6),
                      filled: true,
                    ),
                    controller: _nextPaymentController,
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
                            final entry = TaxesEntry(
                                date: _dateController.text,
                                cost: _costController.text,
                                details: _detailsController.text,
                                nextPayment: _nextPaymentController.text);
                          }
                        }),
                  )
                ])));
  }
}

class TaxesEntry {
  String date;
  String cost;
  String? details;
  String? nextPayment;

  TaxesEntry(
      {required this.date, required this.cost, this.details, this.nextPayment});
}
