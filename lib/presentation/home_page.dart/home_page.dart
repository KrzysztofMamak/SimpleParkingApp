import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _setStatusBarAsTransparent();
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }

  void _setStatusBarAsTransparent() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
}
