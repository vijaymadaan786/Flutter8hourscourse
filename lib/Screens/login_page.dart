import 'package:flutte_youtube_8hrs_practice/Screens/MyRoutes.dart';
import 'package:flutte_youtube_8hrs_practice/Screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String name = "";
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/Login_Page_Image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 29,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Email", hintText: "Enter Email"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
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
            InkWell(
                onTap: () async {
                  setState(() {
                    click = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  width: click ? 50 : 150,
                  height: 40,
                  child: click
                      ? Icon(Icons.done, color: Colors.white)
                      : Text("Login"),
                  decoration: BoxDecoration(
                    shape: click ? BoxShape.circle : BoxShape.rectangle,
                    color: Colors.deepPurple,
                    // borderRadius: BorderRadius.circular(7),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
