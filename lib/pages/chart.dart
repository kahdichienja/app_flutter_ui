import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF18F190),
        elevation: 10.0,
        iconTheme: new IconThemeData(color: Colors.white),
        title: new Text('Carts'),
      ),
      body: MainChart(),
    );
  }
}

class MainChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text("Comming Soon.."),
    );
  }

}
