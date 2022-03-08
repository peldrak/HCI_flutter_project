// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:bbeep/camera_page.dart';

class AddNewVehicle extends StatefulWidget {
  const AddNewVehicle({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddNewVehicle();
}

class _AddNewVehicle extends State<AddNewVehicle> {
  // ignore: non_constant_identifier_names
  XFile? _pictureFile;

  Color BackgroundColor = const Color(0xFFEAEAEA);
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _brandController = TextEditingController();
  final _modelController = TextEditingController();
  final _ypController = TextEditingController();
  final _ccController = TextEditingController();
  final _hpController = TextEditingController();
  final _kmController = TextEditingController();
  final _tiresController = TextEditingController();
  final _serviceController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _brandController.dispose();
    _modelController.dispose();
    _ypController.dispose();
    _ccController.dispose();
    _hpController.dispose();
    _kmController.dispose();
    _tiresController.dispose();
    _serviceController.dispose();
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
              children: <Widget>[
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: ElevatedButton(
                            child: IconButton(
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.black54,
                                ),
                                tooltip: 'Add Photo',
                                onPressed: () {}),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const CircleBorder()),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFFA5A6F6)),
                            ),
                            onPressed: () async {
                              _pictureFile = await availableCameras()
                                  .then((value) => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CameraPage(
                                            cameras: value,
                                          ),
                                        ),
                                      ));
                            }),
                      )
                    ]),
                const SizedBox(height: 5),
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Name of Vehicle',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xB5A5A6F6))),
                      fillColor: Color(0x12A5A6F6),
                      filled: true,
                    ),
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name field cannot be empty!';
                      }
                      return null;
                    }),
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Brand',
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        fillColor: Color(0x12A5A6F6),
                        filled: true),
                    controller: _brandController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Brand field cannot be empty!';
                      }
                      return null;
                    }),
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Model',
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        fillColor: Color(0x12A5A6F6),
                        filled: true),
                    controller: _modelController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Model field cannot be empty!';
                      }
                      return null;
                    }),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Year Of Purchase',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      fillColor: Color(0x12A5A6F6),
                      filled: true),
                  controller: _ypController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'cc',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      fillColor: Color(0x12A5A6F6),
                      filled: true),
                  controller: _ccController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Hp',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      fillColor: Color(0x12A5A6F6),
                      filled: true),
                  controller: _hpController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Total Km',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      fillColor: Color(0x12A5A6F6),
                      filled: true),
                  controller: _kmController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Last Change of Tires',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      fillColor: Color(0x12A5A6F6),
                      filled: true),
                  controller: _tiresController,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Last Service',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      fillColor: Color(0x12A5A6F6),
                      filled: true),
                  controller: _serviceController,
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
                          final entry = Entry(
                              name: _nameController.text,
                              brand: _brandController.text,
                              model: _modelController.text,
                              yp: _ypController.text,
                              cc: _ccController.text,
                              hp: _hpController.text,
                              km: _kmController.text,
                              tires: _tiresController.text,
                              service: _serviceController.text,
                              pictureFile1: _pictureFile);

                          Navigator.pop(context, entry);
                        }
                      }),
                )
              ],
            )));
  }
}

class Entry {
  String name;
  String brand;
  String model;
  String? yp;
  String? cc;
  String? hp;
  String? km;
  String? tires;
  String? service;
  XFile? pictureFile1;

  Entry(
      {required this.name,
      required this.brand,
      required this.model,
      this.cc,
      this.hp,
      this.km,
      this.service,
      this.tires,
      this.yp,
      this.pictureFile1});
}
