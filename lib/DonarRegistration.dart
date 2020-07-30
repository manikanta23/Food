import 'package:flutter/material.dart';

class DonarRegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donar Registration Form'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Form(
          autovalidate: true,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              MyStatefulWidget(),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your first and last name',
                  labelText: 'Name',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter the date and time',
                  labelText: 'Pickup Date & Time',
                ),
                keyboardType: TextInputType.datetime,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  //WhitelistingTextInputFormatter.digitsOnly,
                ],
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  hintText: 'Enter a email address',
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.location_city),
                  hintText: 'Enter the address',
                  labelText: 'Address',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.arrow_drop_down_circle),
                  hintText: 'Enter the Food quantity(approximate in kgs)',
                  labelText: 'Food quantity',
                ),
                keyboardType: TextInputType.text,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.cake),
                  hintText: 'Food type(Veg/Non-Veg)',
                  labelText: 'Food type',
                ),
                keyboardType: TextInputType.text,
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.teal,
                    child: Text('Submit'),
                    onPressed: () {
                      null;
                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),),
            ],
          ),
        ),
      ),
    );
  }
}


enum SingingCharacter { foodforhuman, foodforanimals }

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter _character = SingingCharacter.foodforhuman;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Food for human',
          ),
          leading: Radio(
            value: SingingCharacter.foodforhuman,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Food for animals'),
          leading: Radio(
            value: SingingCharacter.foodforanimals,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

