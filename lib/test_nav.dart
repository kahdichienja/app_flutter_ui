import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var divHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return new Scaffold(
      
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.lightBlueAccent
            ]
          ),
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 10.0
            )
          ],
          // color: Colors.black54,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
          // image: new DecorationImage(
          //   image: new AssetImage('res/img/bg.jpg'),
          //   fit: BoxFit.cover
          // )
        ),
        height: divHeight/2*0.3,
        child: Row(
          children: <Widget>[

            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Icon(Icons.menu),
              ],
              )
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Icon(Icons.account_balance_wallet),
             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Icon(Icons.account_circle),
             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Icon(Icons.shopping_cart),
             ),
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: new Icon(Icons.list),
             )

          ],
        ),

      ),
    );
  }
  
}