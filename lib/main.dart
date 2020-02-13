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
          children: <Widget>[
            Expanded(
                child: Image.asset('assets/lv.jpg'),
              flex: 4,
            ),

            Expanded(
              flex: 3,              // za sva tri expanded dela proporcialno delimo ekran
              child: Container(     // sto veci flex -> veci deo ekrana dobija taj widget
                padding: EdgeInsets.all(30.0),
                color: Colors.red,
                child: Text('1'),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('2'),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan[100],
                child: Text('3'),
              ),
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
