import 'package:flutter/material.dart';

class Second extends StatelessWidget {
 final String? title;
 Second({this.title});

 @override
 Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Enviar Datos"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Atras"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
   );
  }
}
