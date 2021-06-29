import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:uberapp/src/resources/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Image.asset("ic-car-green.png"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                Text(
                  "Login to continue using iCarb",
                  style: TextStyle(fontSize: 16, color: Colors.black38)
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                  child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Container(
                        width: 50, child: Image.asset("ic-mail.png")
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                      prefixIcon: Container(
                          width: 50, child: Image.asset("ic-lock.png")
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                  ),
                ),
                Container(
                 // constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Forget password",
                      style: TextStyle(fontSize: 16, color: Color(0x0ff606470)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6)))
                        ),
                        onPressed: (){},
                        child: Text("Log In",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                    ),
                  ),
                ),
                RichText(text: TextSpan(
                  text: "New user? ",
                  style: TextStyle(color: Color(0xff606470), fontSize: 16),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                          ..onTap = () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegisterPage()));
                      },
                      text: "Sign up for a new account",
                      style: TextStyle(
                        color: Color(0xff3277D6),
                        fontSize: 16
                      )
                    )
                  ]
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
