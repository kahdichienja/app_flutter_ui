import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "Explore",
                    style: new TextStyle(fontSize: 30.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: new Container(
                    height: 100.0,
                    decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(5.0),
                          color: Color(0xFFFD7384)),
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.drive_eta,
                            color: Colors.white,
                          ),
                          new Text("Travelling",
                              style: new TextStyle(color: Colors.white))
                        ],
                    ),
                  ),
                      )),
                  new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.5, right: 2.0, left: 2.0),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFF2BD093),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(Icons.local_offer,
                                        color: Colors.white),
                                  ),
                                  new Text("All In One Place",
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.5, right: 2.0, left: 2.0),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFFC7B4D1),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(Icons.beenhere,
                                        color: Colors.white),
                                  ),
                                  new Text("Completed Task",
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.5, bottom: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFF53CEDB),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(Icons.account_balance,
                                        color: Colors.white),
                                  ),
                                  new Text("Properties",
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.5, top: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFFF1B069),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(Icons.art_track,
                                        color: Colors.white),
                                  ),
                                  new Text("Tasks",
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              )
            ],
          )),
        )
      ],
    );
  }
}
