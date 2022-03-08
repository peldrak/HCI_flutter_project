// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:bbeep/AddNewVehicle.dart';
import 'package:flutter/material.dart';
import 'package:bbeep/AboutPage.dart';
import 'package:bbeep/Statistics.dart';
import 'package:bbeep/Calendar.dart';
import 'package:bbeep/AddNewExpense.dart';
import 'package:camera/camera.dart';

class ListOfVehicles extends StatefulWidget {
  const ListOfVehicles({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListOfVehicles();
}

class _ListOfVehicles extends State<ListOfVehicles> {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);

  final _vehicles = <Vehicle>[];

  void _addNewEntry() async {
    final Entry _newEntry = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AddNewVehicle()));

    if (_newEntry != null) {
      //Add the new vehicle
      _vehicles.add(Vehicle(
          name: _newEntry.name,
          brand: _newEntry.brand,
          model: _newEntry.model,
          yp: _newEntry.yp,
          cc: _newEntry.cc,
          hp: _newEntry.hp,
          km: _newEntry.km,
          tires: _newEntry.tires,
          service: _newEntry.service,
          pictureFile1: _newEntry.pictureFile1));

      setState(() {});
    }
  }

  Widget _buildCarList() {
    return ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: _vehicles.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          if (_vehicles[index].pictureFile1 != null) {
            return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      height: 80,
                      width: 80,
                      child:
                          Image.network(_vehicles[index].pictureFile1!.path)),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 100,
                    width: 400,
                    child: ElevatedButton(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(_vehicles[index].name,
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 24,
                                      fontFamily: 'RobotoMono')),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(_vehicles[index].brand,
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 18,
                                            fontFamily: 'RobotoMono')),
                                    const SizedBox(width: 4),
                                    Text(_vehicles[index].model,
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 18,
                                            fontFamily: 'RobotoMono')),
                                  ])
                            ]),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFA5A6F6)),
                        ),
                        onPressed: () {}),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: ElevatedButton(
                        child: const Center(
                            child: Text(
                          'Add\$',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontFamily: 'RobotoMono'),
                        )),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFA5A6F6)),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AddNewExpense()));
                        }),
                  )
                ]);
          } else {
            return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    width: 400,
                    child: ElevatedButton(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(_vehicles[index].name,
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 24,
                                      fontFamily: 'RobotoMono')),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(_vehicles[index].brand,
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 18,
                                            fontFamily: 'RobotoMono')),
                                    const SizedBox(width: 4),
                                    Text(_vehicles[index].model,
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 18,
                                            fontFamily: 'RobotoMono')),
                                  ])
                            ]),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFA5A6F6)),
                        ),
                        onPressed: () {}),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: ElevatedButton(
                        child: const Center(
                            child: Text(
                          'Add\$',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontFamily: 'RobotoMono'),
                        )),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFA5A6F6)),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AddNewExpense()));
                        }),
                  )
                ]);
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: const Color(0xA6A5A6F6),
            ),
            child: NavDrawer()),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black54, size: 50),
          backgroundColor: BackgroundColor,
          shadowColor: const Color(0x00FFFFFF),
        ),
        body: _buildCarList(),
        floatingActionButton: SizedBox(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: _addNewEntry,
              backgroundColor: const Color(0xFFA5A6F6),
              tooltip: 'Add New Vehicle',
            ),
          ),
        ));
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(height: 70),
          ListTile(
            tileColor: Colors.black54,
            title: const Text(
              'Calendar',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'RobotoMono', fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Calendar()));
            },
          ),
          const SizedBox(height: 30),
          ListTile(
            tileColor: Colors.black54,
            title: const Text(
              'Statistics',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'RobotoMono', fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Statistics()));
            },
          ),
          const SizedBox(height: 30),
          ListTile(
            tileColor: Colors.black54,
            title: const Text(
              'About Us',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'RobotoMono', fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const AboutPage()));
            },
          )
        ],
      ),
    );
  }
}

class Vehicle {
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

  Vehicle(
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
