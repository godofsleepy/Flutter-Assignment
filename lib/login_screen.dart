import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6200EE),
        title: Text("Simple Login"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                hintText: "Username",
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                hintText: "Password",
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text(
                "Login",
                style: TextStyle(color: Color(0xFF6200EE)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
