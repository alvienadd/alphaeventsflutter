import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/Background.png"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(top: 45.0),
                        child:
                            Image(image: AssetImage('assets/icons/Logo.png'))),
                    Container(
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'email address'))),
                    Container(
                        margin: const EdgeInsets.only(top: 14.0),
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'password'))),
                    GestureDetector(
                        child: Container(
                            margin: const EdgeInsets.only(top: 14.0),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/icons/bgheader_2.PNG"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ))),
                            onTap:(){
                              Navigator.of(context).pushNamed('/dashboard',arguments:'Dashboard Page');
                            }
                                ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Forgot Password ?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(int.parse(
                                  '#BB163A'.replaceAll('#', '0xff'))))),
                    ),
                    FlatButton(
                        onPressed: () => {},
                        color: Colors.grey[300],
                        padding: EdgeInsets.all(10.0),
                        child: Row(children: <Widget>[
                          Spacer(flex: 10),
                          Image(image: AssetImage('assets/icons/search.png')),
                          Spacer(flex: 10),
                          Text("Sign In With Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(int.parse(
                                      '#BB163A'.replaceAll('#', '0xff'))))),
                          Spacer(flex: 20),
                        ])),
                    Container(
                        margin: const EdgeInsets.only(top: 40.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: <Widget>[
                          Text("Don't Have Account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Text("Sign Up Here ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(int.parse(
                                      '#BB163A'.replaceAll('#', '0xff'))))),
                        ])),
                  ],
                ),
              )),
        ));
  }
}
