import 'package:flutter/material.dart';
import 'package:helloworld/Login.dart';
import 'package:helloworld/Home.dart';

void main() => runApp(new MaterialApp(
      home: new Signup(),
      debugShowCheckedModeBanner: false,
    ));

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 22.0),
          ),
        ),
        backgroundColor: Color(0xbffd3122),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 110.0, right: 35, left: 35),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Color(0xff9c9c9c), fontWeight: FontWeight.w700),
                    suffixIcon: Icon(Icons.email_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)))),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                      color: Color(0xff9c9c9c), fontWeight: FontWeight.w700),
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              textInputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                    color: Color(0xff9c9c9c), fontWeight: FontWeight.w700),
                suffixIcon: Icon(Icons.password_sharp),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
                obscuringCharacter: '*',
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Re-Enter Password",
                    suffixIcon: Icon(Icons.password_sharp),
                    hintStyle: TextStyle(
                        color: Color(0xff9c9c9c), fontWeight: FontWeight.w700),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)))),
            SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              onPressed: () => {showAlertDialog(context)},
              label: Text(
                "SignUp",
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(Icons.login_sharp),
              backgroundColor: Color(0xbffd3122),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttona
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => (Login())));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Welcome To URGUIDE"),
    content: Text("Login To Learn"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
