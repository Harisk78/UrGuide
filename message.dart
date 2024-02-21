import 'dart:html';
import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  return runApp(new Messager());
}

class Messager extends StatefulWidget {
  const Messager({Key? key}) : super(key: key);

  @override
  State<Messager> createState() => _MessagerState();
}

class _MessagerState extends State<Messager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            )
          },
          icon: Icon(Icons.home),
        ),
        title: Text(
          'ChatWithFriends',
          style: TextStyle(
            color: Color(0xff312b2b),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 22.0,
          ),
        ),
        backgroundColor: (Color(0xbff6372a)),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Person1",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 16.0,
              ),
            ),
            leading: Icon(Icons.person_2),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Person2",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.person_2),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Person3",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.person_2),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Person4",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.person_2),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Person5",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.person_2),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Person6",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.person_2),
          ),
          Divider(
            height: 0.7,
          ),
        ],
      ),
    );
  }
}
