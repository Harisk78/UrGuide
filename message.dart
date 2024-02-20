import 'dart:html';

import 'package:flutter/material.dart';
import 'main.dart';

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
              MaterialPageRoute(builder: (context) => const MyApp()),
            )
          },
          icon: Icon(Icons.home),
        ),
        title: Text('ChatWithFriends'),
        backgroundColor: Color(0xb4ff5b4f),
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
