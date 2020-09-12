import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_scanner_generator_app/screens/scan_screen.dart';
import 'package:qr_scanner_generator_app/widgets/home_button.dart';

import 'generate_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("QR Code Scanner & Generator"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              HomeButton(
                text: "SCAN QR CODE",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScanScreen()));
                },
              ),
              HomeButton(
                text: "GENERATE QR CODE",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GenerateScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
