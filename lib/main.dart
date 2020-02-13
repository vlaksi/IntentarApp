import 'package:flutter/material.dart';

/*
 Arrow funkcija main, koja ocekuje stablo widgeta.
 Argument je widget koji sluzi kao wraper za ostale
 widgete.
 */
void main() => runApp(MaterialApp(
    home: PocetnaStrana(),
));

/*
  Scaffold widget nam omogucava osnovni layout za nasu aplikaciju.

  Stateless - widget koji se ne moze menjati tokom vremena.
  Stateful  - widget koji se moze menjati tokom vremena.

 */

/*
    Ovo nam omogucava 'HotReload' kako bi mogli videti rezultate
    nase izmene u kodu instant.
 */
class PocetnaStrana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(                 // za gornji deo aplikacije
            title: Text('My first app'),
            centerTitle: true,
            backgroundColor: Colors.red[600],
        ),
        body: Column(
          /*
          Sada je obrnuto u odnosu na Rows.

          Horizontalno namestanje widgeta -
          Vertikalno namestanje widgeta -
           */
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: Text('one'),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('two'),
            ),
            Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.red,
              child: Text('three'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text('push'),
            backgroundColor: Colors.red[600],
        ),
    ) ;
  }
}
