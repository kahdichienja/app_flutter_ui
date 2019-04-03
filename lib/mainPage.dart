import 'package:flutter/material.dart';
// res/img/bg.jpg
class MainPageState extends State<MainPage> {
  String home;

  Drawer _buildDrawer(context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    'res/img/bg.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                  new Text('Something Here',
                      style: new TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  new Text('Something Here',
                      style: new TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.home),
            title: new Text('Home'),
            onTap: (){
              setState(() {
               this.home = 'This is the Homepage'; 
              });
              // Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.list),
            title: new Text('Posts'),
          ),
          new ListTile(
            leading: new Icon(Icons.camera),
            title: new Text('Gallery'),
          ),
          new ListTile(
            leading: new Icon(Icons.notification_important),
            title: new Text('Notifications'),
          ),
          new Divider(
            color: Colors.black45,
            indent: 20.0,
          ),
          new ListTile(
            leading: new Icon(Icons.people),
            title: new Text('About Us'),
          ),
          new ListTile(
            leading: new Icon(Icons.security),
            title: new Text('Privacy'),
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Settings'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // appBar: new AppBar(
      //   title: Text("Drawer in Flutter"),
      // ),
      drawer: _buildDrawer(context),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}
