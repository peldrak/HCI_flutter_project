// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 100),
              Image.asset('assets/icons/road-pngrepo-com.png',
                  width: 200, height: 150),
              RichText(
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'B',
                      style: TextStyle(
                          color: Color(0xFF7B1B72),
                          fontSize: 40,
                          fontFamily: 'RobotoMono')),
                  TextSpan(
                      text: 'Beep',
                      style: (TextStyle(
                          color: Color(0xFF29304C),
                          fontSize: 40,
                          fontFamily: 'RobotoMono'))),
                ]),
              ),
              const SizedBox(height: 50),
              const Text(
                  'BBeep is a free up run by 3 electrical engineering students.',
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono')),
              const Text(
                  'Everything started as a school project but we are trying to evolve our idea in a professional way.',
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono')),
              const Text(
                  'We would like to offer a new experience in the field of vehicle management.',
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono')),
              const Text(
                  'With BBeep you are one step ahead and you keep track of your vehicle\'s needs.',
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono')),
              const Text(
                  'Personalized statistics and notifications are provided to make your experience even better.  ',
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono')),
            ],
          )),
        ));
  }
}
