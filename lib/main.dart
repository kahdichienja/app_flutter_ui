import 'package:flutter/material.dart';
import 'login.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
void main() => runApp(QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      debugShowCheckedModeBanner: false,
      // set Raleway as the default app font
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // MyHomePage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = new GoogleSignIn();

    Future<FirebaseUser> _signIn() async{
      GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;
      // FirebaseUser user = await _auth.si

    }
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                    margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF18D191),
                    ),
                    child: new Icon(Icons.local_offer, color: Colors.white)),
                new Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFFFC6A7F)),
                    child: new Icon(Icons.home, color: Colors.white)),
                new Container(
                    margin: new EdgeInsets.only(left: 70.0, top: 50.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFFFFCE56)),
                    child: new Icon(Icons.local_car_wash, color: Colors.white)),
                new Container(
                    margin: new EdgeInsets.only(left: 10.0, top: 100.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF45E0EC),
                    ),
                    child: new Icon(Icons.place, color: Colors.white)),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 90.0),
                    child: new Text(
                      "Todos",
                      style: new TextStyle(fontSize: 30.0),
                    ))
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Sign In With Email",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 70.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFF4364A1),
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "Facebook",
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 10.0),
                      
                    child: GestureDetector(
                      
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                        // applogin-d0bd4
                       //implementation 'com.google.firebase:firebase-core:16.0.1'   
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFFDF513B),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Sign In With Google",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
