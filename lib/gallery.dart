import 'package:flutter/material.dart';
import 'main.dart';
import 'posts.dart';

class MyGallery extends StatefulWidget {
  final Widget child;

  MyGallery({Key key, this.child}) : super(key: key);

  _MyGalleryState createState() => _MyGalleryState();
}

class _MyGalleryState extends State<MyGallery> {
  Drawer _buildDrawer(context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountEmail: new Text("User@g.net"),
            accountName: new Text("User1"),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://source.unsplash.com/random/700x729/?sexy,lady'),
            ),
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new NetworkImage(
                        'https://source.unsplash.com/random/700x709/?nature,'),
                    fit: BoxFit.cover)),
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
                  context, MaterialPageRoute(builder: (context) => Post()));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.comment),
            title: new Text('Chart'),
          ),
          new ListTile(
            leading: new Icon(Icons.camera),
            title: new Text('Gallery'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyGallery()));
            },
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
    return new Scaffold(
      drawer: _buildDrawer(context),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.blueGrey),
      ),
      body: MainGallery(),
    );
  }
}

class MainGallery extends StatelessWidget {
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
                      "Photos",
                      style: new TextStyle(fontSize: 30.0),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                // Another row for all pictures
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
                                          'https://source.unsplash.com/random/725x720/?nature,library'),
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
                                          'https://source.unsplash.com/random/727x721/?nature,boy'),
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
                                          'https://source.unsplash.com/random/722x723/?nature,'),
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
                new SizedBox(
                  height: 10.0,
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
                                        'https://source.unsplash.com/random/701x720/?baby,girl'),
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
                                        'https://source.unsplash.com/random/702x721/?man,women'),
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
                                        'https://source.unsplash.com/random/703x723/?rocket,'),
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
                                        'https://source.unsplash.com/random/721x720/?space,'),
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
                                        'https://source.unsplash.com/random/720x721/?library,lady'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "On Books...",
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
                                        'https://source.unsplash.com/random/723x723/?woman,sexy'),
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
                                        'https://source.unsplash.com/random/718x720/?home,'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "Get it...",
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
                                        'https://source.unsplash.com/random/717x721/?love,lady'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "On the Love...",
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
                                        'https://source.unsplash.com/random/715x723/?space,'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "Wooow... Very Nice",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
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
                                        'https://source.unsplash.com/random/714x720/?love,sex'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "As always...on then move",
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
                                        'https://source.unsplash.com/random/713x721/?nature,lady'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "Like it",
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
                                        'https://source.unsplash.com/random/712x723/?necked,lady'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "love my...",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
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
                                        'http://al-masi.com/notes/img/homesection.jpg'),
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
                                        'https://source.unsplash.com/random/710x721/?nature,books'),
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
                                        'https://source.unsplash.com/random/703x729/?sexy,lady'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text(
                              "Sexy...",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
