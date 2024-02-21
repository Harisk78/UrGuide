import 'package:flutter/material.dart';
import 'package:helloworld/Search.dart';
import 'package:helloworld/location.dart';
import 'package:helloworld/message.dart';

void main() {
  runApp(new MaterialApp(home: new Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
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
        backgroundColor: (Color(0xbff6372a)),
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Messager()))
                  },
              icon: Icon(Icons.messenger_rounded))
        ],
      ),
      drawer: Drawer(
        backgroundColor: (Color(0xff000000)),
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
            decoration: BoxDecoration(color: Color(0xfffd5b50)),
          ),
          ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
          ),
          Divider(
            height: 0.7,
            color: Colors.white,
          ),
          ListTile(
            title: Text("Community",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16.0,
                )),
            leading: Icon(
              Icons.people_sharp,
              color: Colors.white,
            ),
          ),
          Divider(
            height: 0.7,
            color: Colors.white,
          ),
          ListTile(
            title: Text("Saved",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16.0,
                )),
            leading: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
          ),
          Divider(
            height: 0.7,
            color: Colors.white,
          ),
          ListTile(
            title: Text("Notifications",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16.0,
                )),
            leading: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          ),
          Divider(
            height: 0.7,
            color: Colors.white,
          ),
          ListTile(
            title: Text("Help",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16.0,
                )),
            leading: Icon(
              Icons.keyboard_command_key_rounded,
              color: Colors.white,
            ),
          ),
          Divider(
            height: 0.7,
            color: Colors.white,
          ),
          ListTile(
            title: Text("Sign out",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16.0,
                )),
            leading: Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ),
          ),
          Divider(
            height: 0.7,
            color: Colors.white,
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xbffd3122),
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                },
                icon: Icon(Icons.search, size: 30.0)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => location()));
                },
                icon: Icon(Icons.location_on, size: 30.0)),
            verticalmenu()
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }

  PopupMenuButton<dynamic> verticalmenu() {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
            child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text("Settings"),
            ),
          ],
        )),
        PopupMenuItem(
            child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.price_change),
              title: Text("Premium"),
            ),
          ],
        )),
        PopupMenuItem(
            child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Analytics"),
            ),
          ],
        )),
        PopupMenuItem(
            child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.contact_support_sharp),
              title: Text("Contact Us"),
            ),
          ],
        )),
      ],
      child: Icon(Icons.more_vert),
      elevation: 50.0,
    );
  }
}
