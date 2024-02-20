import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/message.dart';

void SearchApp() {
  runApp(new Search());
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _MyappState();
}

class _MyappState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: new Text(
          "Search",
          style: TextStyle(
            color: Color(0xff312b2b),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 22.0,
          ),
        )),
        backgroundColor: (Color(0xbff6372a)),
      ),
      body: Container(
        child: Column(children: [SearchBar()]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xbffd3122),
        height: 50.0,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                )),
            IconButton(
                onPressed: () => {}, icon: Icon(Icons.search, size: 30.0)),
            IconButton(
                onPressed: () => {}, icon: Icon(Icons.location_on, size: 30.0)),
            IconButton(
                onPressed: () => {}, icon: Icon(Icons.more_vert, size: 30.0))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
