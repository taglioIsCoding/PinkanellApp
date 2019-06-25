import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,
    this.title}) :
        super(key: key);


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 0;
  String _p1 = "Player 1";
  String _p2 = "Player 2";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _incrementCounter2(){
    setState(() {
      _counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

       appBar: new AppBar(
       backgroundColor: Colors.black,
       title: const Text ("Regesta pinkanel"),

       ),
           body: Column(children: <Widget>[
           Row(//ROW 1
               children: [
             Container(
               //color: Colors.orange,
               //margin: EdgeInsets.all(25.0),
               child: Text(
                 _p1
               ),
             ),
             Container(
               //color: Colors.blue,
               //margin: EdgeInsets.all(25.0),
               child: Text(
                 "  "
               ),
             ),
             Container(
               //color: Colors.purple,
               //margin: EdgeInsets.all(25.0),
               child: Text(
                 _p2
               ),
             )
           ]),
           Row(// ROW 2
               children: [
             Container(

               child: Text(
              '$_counter'
              ),
             ),
             Container(
               child: Text(
                 " : "
               ),
             ),
             Container(

               child: Text(
                 '$_counter'
               ),
             ),
           ]),
         ]));
   }
 }




