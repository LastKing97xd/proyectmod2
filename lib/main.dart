import 'package:proyectmod2/home.dart';
import 'package:proyectmod2/screensdrg/contact.dart';
import 'package:proyectmod2/screensdrg/battery.dart';
import 'package:proyectmod2/screensdrg/settings.dart';
import 'package:proyectmod2/srclistainfinita/infinita.dart';
//import 'package:proyectmod2/srcnavigator/primary.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: Home(),
   //Mapiamos las direcciones
   routes: <String,WidgetBuilder>{
     //Pasamos los parametros
     Settings.routeName:(BuildContext context) => Settings(),
     Battery.routeName:(BuildContext context) => Battery(),
     Contact.routeName:(BuildContext context) => Contact(),
     Infinita.routeName:(BuildContext context) => Infinita(),
   }
  ));
}