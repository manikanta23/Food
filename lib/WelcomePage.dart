import 'package:flutter/material.dart';
import 'package:food_app1/main.dart';

// Main class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

// Login Page
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bck.jpg"),
                fit: BoxFit.cover)
        ),
        child:  Scaffold(
          backgroundColor: Colors.teal,
          resizeToAvoidBottomPadding: false,
          body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/logo.jpg'),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(0.0),
                          //color: Colors.redAccent,
                          child: new Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 198, 168, 1),
                                  Color.fromRGBO(143, 198, 168, .6),
                                ])),
                            child: Center(
                              child: Text(
                                "Donar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onPressed: () {
                            //print("Container clicked hi");
                            navigateToMainForm(context);
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(0.0),
                          //color: Colors.redAccent,
                          child: new Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 198, 168, 1),
                                  Color.fromRGBO(143, 198, 168, .6),
                                ])),
                            child: Center(
                              child: Text(
                                "Charity",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onPressed: () {
                            //print("Container clicked hi");
                            navigateToMainForm(context);
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(0.0),
                          //color: Colors.redAccent,
                          child: new Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 198, 168, 1),
                                  Color.fromRGBO(143, 198, 168, .6),
                                ])),
                            child: Center(
                              child: Text(
                                "Volunteer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onPressed: () {
                            //print("Container clicked hi");
                            navigateToMainForm(context);
                          },
                        ),

                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

Future navigateToMainForm(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
}


