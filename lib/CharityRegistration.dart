import 'package:flutter/material.dart';

class CharityRegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charity Registration Form'),
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
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter charity name',
                  labelText: 'Charity Name',
                ),
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

