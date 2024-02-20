import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          "Urguide",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22.0,
              color: Color(0xff312b2b),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: (Color(0xb4ff5b4f)),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.messenger_rounded))
        ],
      ),
      drawer: Drawer(
        backgroundColor: (Color(0x8aeaeaea)),
        child: Column(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("UserName",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
            accountEmail: Text(
              "usermail@gmail.com",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "User",
                  textAlign: TextAlign.center,
                )),
            currentAccountPictureSize: const Size.square(70),
            decoration: BoxDecoration(color: Color(0xb4ff5b4f)),
          ),
          ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 16.0,
              ),
            ),
            leading: Icon(Icons.person_2_outlined),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Community",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.people_sharp),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Saved",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.bookmark),
          ),
          Divider(
            height: 0.7,
          ),
          ListTile(
            title: Text("Help",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.0,
                )),
            leading: Icon(Icons.keyboard_command_key_rounded),
          ),
          Divider(
            height: 0.7,
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xb4ff5b4f),
        height: 50.0,
        child: Row(
          children: [
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                )),
            IconButton(
                onPressed: () => {}, icon: Icon(Icons.search, size: 30.0)),
            IconButton(
                onPressed: () => {}, icon: Icon(Icons.location_on, size: 30.0)),
            IconButton(
                onPressed: () => {}, icon: Icon(Icons.more_horiz, size: 30.0))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
