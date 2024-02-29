import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/signup.dart';

void main() {
  runApp(MaterialApp(
    home: new Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Login",
          ),
        ),
        backgroundColor: Color(0xbffd3122),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 35, left: 35, top: 150),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "UserName / Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                suffixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                suffixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              onPressed: () => {showAlertDialog(context)},
              label: Text("Login"),
              icon: Icon(Icons.login),
            ),
            SizedBox(
              height: 25,
            ),
            new InkWell(
                child: new Text('New User'),
                onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()))
                    }),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Welcome Back To URGUIDE"),
    content: Text("Succesfully Logged in"),
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
