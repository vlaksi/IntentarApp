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
        body: Container(                // kontenjer za druge widgete
          /*
            Kada jedan widget nema vise 'dece' tj. 'child'
            container ce zauzeti ceo prostor roditelja,
            u ovom slucaju ceo prostor za body.

            A ako bude dece, kontenjer zauzima velicinu
            tog deteta. U ovom slucaju posto imamo child
            zauzece njegovu velicinu.

            Zbog toga uvodimo i koristimo padding za
            razmak unutar kontenjera, a koristimo i
            marging za razmak OKO konetenjera.
           */
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
          margin: EdgeInsets.all(20.0),
          color: Colors.grey[400],
          child: Text('ciao'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text('push'),
            backgroundColor: Colors.red[600],
        ),
    ) ;
  }
}
