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
            child: Text(
                'Ist alles okey ?',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.grey[600],
                    fontFamily: 'IndieFlower',
                ),
            ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text('push'),
            backgroundColor: Colors.red[600],
        ),
    ) ;
  }
}
