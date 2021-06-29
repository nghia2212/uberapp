import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        color: Colors.white,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color(0xff3277D8)),
            elevation: 0,
          ),
          body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Image.asset("ic-car-red.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Text(
                      "Welcome Aboard!",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ),
                  Text(
                      "Signup with iCab in simple steps",
                      style: TextStyle(fontSize: 16, color: Colors.black38)
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 15),
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                          labelText: "Name",
                          prefixIcon: Container(
                              width: 50, child: Image.asset("ic-user.png")
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
                    decoration: InputDecoration(
                        labelText: "Phone number",
                        prefixIcon: Container(
                            width: 50, child: Image.asset("ic-phone.png")
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color(0xffCED0D2), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(6))
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
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
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
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
                      text: "Already a User? ",
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: [
                        TextSpan(
                            text: "Login now",
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
      ),
    );
  }
}
