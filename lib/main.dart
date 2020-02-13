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
        body: Center(                   // u body imamo center widget koji sve sto je u njemu centrira
            child: IconButton(
              onPressed: () {
                print("You clicked me");
              },
              icon: Icon(Icons.mail),
              color: Colors.amber,
            ),
            /* Dodavanje ikonice u dugme
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.mail
              ),
              label: Text('mail me'),
              color: Colors.amber,
            ),
            */

            /* Dodavanje dumgeta.
            RaisedButton(
              onPressed: () {
                print("You clicked me :o");
              },
              child: Text('click me'),
              color: Colors.lightBlue[200],
            ),
            */

            /* Dodavanje ikonice.
            Icon(
              Icons.airport_shuttle,
              color: Colors.lightBlue,
              size: 50.0,
            ),
            */

        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text('push'),
            backgroundColor: Colors.red[600],
        ),
    ) ;
  }
}
