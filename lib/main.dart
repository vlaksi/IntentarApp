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
        body: Row(
          /*
          mainAxisAlignment - podesavanje za horizontalu
          crossAxisAlignment - podesavanje za vertikalu
           */
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,       // sve spustamo na visinu najviseg 
          children: <Widget>[
            Text('ciao'),
            FlatButton(
              onPressed: (){},
              color: Colors.amber,
              child: Text('click me'),
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('unutar kontenjera'),
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
