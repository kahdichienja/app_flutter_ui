import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF18F190),
        elevation: 10.0,
        iconTheme: new IconThemeData(color: Colors.white),
        title: new Text('Notifications'),
      ),
      body: MainNotify(),
    );
  }
}

class MainNotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text("No Notifications"),
    );
  }

}
