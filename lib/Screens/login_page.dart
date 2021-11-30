import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/Login_Page_Image.png",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email", hintText: "Enter Email"),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Hi Vijay... You are just about to become flutter expert");
            },
            child: Text(
              "Login",
            ),
            style: TextButton.styleFrom(),
          )
        ],
      ),
    );
  }
}
