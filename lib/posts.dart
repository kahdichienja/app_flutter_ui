import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Posts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Posts',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AllPosts(title: 'Posts'),
    );
  }
  
}


class AllPosts extends StatefulWidget {

  AllPosts({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AllPostsState createState() => _AllPostsState();
}

class _AllPostsState extends State<AllPosts> {

  Future<List<User>> _getUsers() async {
    var data = await http.get("https://next.json-generator.com/api/json/get/E1Qj6QaOL?indent=2");
    // var data = await http.get("http://192.168.137.1:8080/Api/posts/?format=api");
    var jsonData = json.decode(data.body);

    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u["index"], u["photo"], u["author"], u["about"], u["name"], u["email"],u["picture"], u["address"], u["phone"]);

      users.add(user);      
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Your Internet Connection Seems To Be Low. Please wait..."),
                ),
              );
            } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    snapshot.data[index].photo
                  ),
                ),
                // title: Text(snapshot.data[index].author),
                title: Text(snapshot.data[index].name),
                subtitle: Text(snapshot.data[index].email),
                onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => DetailPage()))
                
              );
             },
             
            );
            
          }
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final User user;

  DetailPage({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(user.name),
      ),
    );
  }
}
class User {

  final int index;
  final String about;
  final String name;
  final String email;
  final String picture;
  final String address;
  final String phone;
  final String author;
  final String photo;

  User(this.photo, this.author,this.index, this.about, this.name,this.email,this.picture,this.phone,this.address);
  
}

// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Post> fetchPost() async {
//   // local host api
//   // final response = await http.get('http://192.168.137.1:8080/Api/posts/?format=api');
//   // online api
//   final response = await http.get('https://next.json-generator.com/api/json/get/E1Qj6QaOL?indent=2');


//   if (response.statusCode == 200) {
//     // If the call to the server was successful, parse the JSON
//     return Post.fromJson(json.decode(response.body));
//   } else {
//     // If that call was not successful, throw an error.
//     throw Exception('Failed to load post');
//   }
// }

// class Post {
//   final int id;
//   final int index;
//   final String author;
//   final String about;
//   final String name;
//   final String email;
//   final String picture;
//   final String title;
//   final String description;

//   Post({this.author, this.id, this.title, this.description, this.index,this.name,this.picture,this.email,this.about});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       name: json['name'],
//       index: json['index'],
//       picture: json['picture'],
//       email: json['email'],
//     );
//   }
// }

// void main() => runApp(MyApp(post: fetchPost()));

// class MyApp extends StatelessWidget {
//   final Future<Post> post;

//   MyApp({Key key, this.post}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Posts'),
//         ),
//         body: Center(
//           child: FutureBuilder<Post>(
//             future: post,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data.name);
//               } else if (snapshot.hasError) {
//                 return Text("${snapshot.error}");
//               }
//               // By default, show a loading spinner
//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }