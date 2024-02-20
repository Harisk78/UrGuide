import 'dart:html';
import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
import 'package:helloworld/Home.dart';
// import 'package:helloworld/Search.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
