import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateScreen extends StatefulWidget {
  @override
  _GenerateScreenState createState() => _GenerateScreenState();
}

class _GenerateScreenState extends State<GenerateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          data: 'This QR code will show the error state instead',
          version: QrVersions.auto,
          gapless: true,
          size: 250,
          embeddedImage: AssetImage('assets/images/check.png'),
          embeddedImageEmitsError: true,
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: Size(50, 50),
          ),
          errorStateBuilder: (cxt, err) {
            return Container(
              child: Center(
                child: Image.asset('assets/images/uncheck.png'),
              ),
            );
          },
        ),
      ),
    );
  }
}
