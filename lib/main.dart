import 'package:flutter/material.dart';
import 'package:food_app1/CharityRegistration.dart';
import 'package:food_app1/ContactUs.dart';
import 'package:food_app1/DonarRegistration.dart';
import 'package:food_app1/CharityGallery.dart';
import 'package:food_app1/Donations.dart';
import 'package:food_app1/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

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
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.teal,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email or Phone Number",
                        hintStyle: TextStyle(color: Colors.grey[400])),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.teal,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey[400])),
                  ),
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
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onPressed: () {
                        //print("Container clicked hi");
                        navigateToDashBoard(context);
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.arrow_back,

        ),
      ),
    );
  }
}

// Navigation
Future navigateToDashBoard(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
}
// Navigation
Future navigateToDonarRegistration(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DonarRegistration()));
}

// Navigation
Future navigateToCharityGallery(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CharityGallery()));
}

// Navigation
Future navigateToCharityRegistration(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CharityRegistration()));
}

// Navigation
Future navigateToDonations(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DonationsForm()));
}

// Navigation
Future navigateToContactus(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactusForm()));
}



// main Dash board
class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
        child:   Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Dash board'),
            backgroundColor: Colors.teal,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.assignment_return),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

            ],
          ),
          body: Center(
            child: IntrinsicWidth(

              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.teal,
                    child: Text('Donate Food'),
                    onPressed: () {
                      //Navigator.pop(context);
                      navigateToDonarRegistration(context);
                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),

                  SizedBox(
                    height: 20, width: 150,
                  ),
                  /*  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.teal,
                    child: Text('Charity'),
                    onPressed: () {
                      navigateToCharityRegistration(context);
                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ), */
                  SizedBox(
                    height: 20, width: 150,
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.teal,
                    child: Text('Charitys'),
                    onPressed: () {
                      navigateToCharityGallery(context);
                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.teal,
                    child: Text('Food Donars'),
                    onPressed: () {
                      navigateToDonations(context);
                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.teal,
                    child: Text('Contact us'),
                    onPressed: () {
                      //Navigator.pop(context);
                      navigateToContactus(context);
                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Donar Registration
class DonarRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DonarRegistrationForm();
  }
}

// Charity Registration
class CharityRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CharityRegistrationForm();
  }
}

// Donations
class DonationsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Donations();
  }
}

// contact us
class ContactusForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Contact();
  }
}


///////////////////////
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
