import 'package:flutter/material.dart';
import 'main.dart';
import 'posts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Drawer _buildDrawer(context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountEmail: new Text("User@g.net"),
            accountName: new Text("User1"),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new  NetworkImage('https://source.unsplash.com/random/700x729'),
            ),
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new NetworkImage('https://source.unsplash.com/random/700x709'),
              fit: BoxFit.cover
              )
            ),
          ),
            // remvd smth
          new ListTile(
            leading: new Icon(Icons.home),
            title: new Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QuickBee()));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.list),
            title: new Text('Posts'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Posts())
              );
            },
          ),
          new ListTile(
            leading: new Icon(Icons.comment),
            title: new Text('Chart'),
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

  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // side nav.
      drawer: _buildDrawer(context),

      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF29D801),
        currentIndex: _bottomNavIndex,
        // arrow function and callback arrow fuction
        onTap: (int index) => setState(() => _bottomNavIndex = index),

        items: [
          new BottomNavigationBarItem(
              title: new Text('Home'), icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text('Gallery'), icon: new Icon(Icons.camera)),
          new BottomNavigationBarItem(
              title: new Text('Charts'), icon: new Icon(Icons.message)),
          new BottomNavigationBarItem(
              title: new Text('Add Pic'), icon: new Icon(Icons.add_a_photo)),
          new BottomNavigationBarItem(
              title: new Text('Trendings'), icon: new Icon(Icons.phone_iphone)),
          new BottomNavigationBarItem(
              title: new Text('Contacts'), icon: new Icon(Icons.dialpad))
        ],
      ),
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
                            padding: const EdgeInsets.only(
                                bottom: 2.5, right: 2.0, left: 2.0),
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
                            padding: const EdgeInsets.only(
                                top: 2.5, right: 2.0, left: 2.0),
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
                            padding:
                                const EdgeInsets.only(left: 2.5, bottom: 2.5),
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
              ),

              new SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text("Trending On Todos",
                        style: new TextStyle(fontSize: 18.0)),
                  ),
                  new Expanded(
                    child: new Text(
                      "View all...",
                      style: new TextStyle(color: Color(0xFFF2BD093)),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
              new SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://source.unsplash.com/random/700x720'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "On the move...",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://source.unsplash.com/random/700x721'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "On the trend...",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://source.unsplash.com/random/700x723'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "Cool ...",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // end of trending.
              new SizedBox(
                height: 10.0,
              ),

              Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text("Gallery On Todos",
                        style: new TextStyle(fontSize: 18.0)),
                  ),
                  new Expanded(
                    child: new Text(
                      "View all...",
                      style: new TextStyle(color: Color(0xFFF2BD093)),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
              new SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'https://source.unsplash.com/random/701x720'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "As always...",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'https://source.unsplash.com/random/702x721'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "On It...",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: new DecorationImage(
                                  image: new NetworkImage(
                                      'https://source.unsplash.com/random/703x723'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          new Text(
                            "Wooow...",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
        )
      ],
    );
  }
}
