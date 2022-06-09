import 'package:proyectmod2/screenscontact/contactitem.dart';
import 'package:proyectmod2/srclistas/model/contact_model.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const String routeName = "/contact";
  //Creamos un metodo que envie el contact_model
  buildList() {
    return <ContactModel>
    [
      ContactModel(name: "Rodrigo Morales",email: "rmorales@gmail.com"),
      ContactModel(name: "Naylet Andres",email: "nandres@gmail.com"),
      ContactModel(name: "Carlos Andres",email: "candres@gmail.com"),
      ContactModel(name: "Antonio Julca",email: "ajulca@gmail.com"),
      ContactModel(name: "Luis Torres",email: "ltorres@gmail.com"),
      ContactModel(name: "Angela Alor",email: "aalor@gmail.com"),
    ];  
  }

  //Devolvemos una lista de ContactItem
  List<ContactItem>builContactList(){
    return buildList()
    //Funcion map recorre todos los elementos de un datasource
      .map<ContactItem>((contact) => ContactItem(contact:contact))
      .toList();//Pasamos una lista
  }

 @override
 Widget build(BuildContext context) {
  return new Scaffold(
    appBar: AppBar(
      title: Text("Contact"),
    ),
    body: ListView(
      //children: <Widget>[ContactItem()],
      children: builContactList(),
    ),
 );
 }
}