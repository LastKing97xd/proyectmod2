import 'dart:math';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Infinita extends StatefulWidget {
  static const String routeName = "/infinita";
  @override
  _InfinitaState createState() => new _InfinitaState();
}

class _InfinitaState extends State<Infinita> {
  //Suggestions: Variable de sugerencia de tipo lista
  //WordPair: Clase de combinacion de 2 palabras
  final suggestions = <WordPair>[];
  //Guardamos cada elemento que le hacemos click
  final saved = <WordPair>[];
  ListTile buildRow(WordPair pair) {
    return ListTile(
      trailing: Icon(Icons.shopping_cart),
      //leading: Icon(Icons.shopping_cart),
      title: Text(pair.asPascalCase), //Toma el valor con diferentes formatos
      onTap: () {
        setState(() {
          //Funcion que renderiza los widget
          saved.add(pair); //Agrega un elemento a la lista
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    void pushSaved() {
      //Permite ir a una pantalla especifica
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        final title = saved
            //El metodo map convierte un set de datos a un ListTile y recibe un titulo
            //Pair: toma el primer elemento
            .map((pair) => ListTile(
                  title: Text(pair.asPascalCase),
                ))
            .toList();
        return Scaffold(
          appBar: AppBar(
            title: Text("Guardados"),
          ),
          body: ListView(
            children: title,
          ),
        );
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Infinita"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: pushSaved,
          ),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        //Si el elemento es impar llama al widget Divider(Construye una linea en cada fila)
        if (i.isOdd) return Divider();
        if (i >= suggestions.length) {
          //Funcion addAll puede agregar mas de 1 elemento a una lista
          //Funcion generateWordPairs tomamos 10 elementos de tipo word pairs
          //Tomamos 10 palabras compuestas y lo agregamos a la coleccion
          suggestions.addAll(generateWordPairs().take(10));
        }
        return buildRow(suggestions[i]);
        //ListTile(
        //leading: Icon(Icons.shopping_cart),
        //title: Text('Producto $i'),
        //subtitle: Text('Precio:${Random().nextInt(500)}USD)'),
        //);
      }),
    );
  }
}
