import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/Search.dart';

void main() {
  return runApp(new location());
}

class location extends StatefulWidget {
  const location({Key? key}) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Find Friend Near You")),
        backgroundColor: Color(0xbffd3122),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [SearchBar()],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xbffd3122),
        height: 50.0,
        child: Row(
          children: [
            IconButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                )
              },
              icon: Icon(Icons.home, size: 30.0),
              hoverColor: Colors.white,
            ),
            IconButton(
              onPressed: (){
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
              },
              icon: Icon(Icons.search, size: 30.0),
              hoverColor: Colors.white,
            ),
            IconButton(
              onPressed: ()=>{},
              icon: Icon(Icons.location_on, size: 30.0),
              hoverColor: Colors.white,
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.more_vert, size: 30.0),
              hoverColor: Colors.white,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(
          Icons.my_location_sharp,
          color: Color(0xbffd3122),
          size: 30.0,
        ),
        backgroundColor: Colors.white,
        hoverColor: Color(0xaff6a9a9),
        foregroundColor: Colors.yellow,
      ),
    );
  }
}
