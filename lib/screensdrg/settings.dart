import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String routeName= "/configuracion";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Configuracion"),
      ),
      body: Container(
        child: Center(
          child: Text("Configuracion"),
        ),
      ),
    );
  }
}
