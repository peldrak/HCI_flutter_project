import 'package:flutter/material.dart';
import 'package:bbeep/ListOfVehicles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BBeep());
}

class BBeep extends StatelessWidget {
  const BBeep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BBeep', home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Color BackgroundColor = const Color(0xFFEAEAEA);

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/icons/road-pngrepo-com.png',
                width: 260, height: 180),
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
            const Text('Keep track of your vehicle(s) with BBeep',
                style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono')),
            const SizedBox(height: 100),
            SizedBox(
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                  child: const Text('GET STARTED',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'RobotoMono')),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF5A4FCF)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListOfVehicles()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
