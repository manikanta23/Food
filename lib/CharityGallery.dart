import 'package:flutter/material.dart';
import 'package:food_app1/main.dart';

class CharityGallery extends StatelessWidget {
  CharityGallery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Charitys"),
          backgroundColor: Colors.teal,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/background.jpg'),
              child: Text(
                'Iskon charity',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/food1.jpg'),
              child: Text(
                'Gayatri trust',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/FoodDist.jpg'),
              child: Text(
                'Lakshmi old age home',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/Disheswithfood.jpg'),
              child: Text(
                'Amma orhanise',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/FoodShare.png'),
              child: Text(
                'Children trust',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/food2.jpg'),
              child: Text(
                'Food for all',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateToCharityRegistration(context);
          },
          backgroundColor: Colors.teal,
          child: Icon(
            Icons.add,

          ),
        ),
    );

  }
}



