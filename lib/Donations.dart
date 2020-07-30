import 'package:flutter/material.dart';
import 'package:food_app1/ChatModel.dart';


final List<String> entries = <String>['Westin', 'Lemon tree', 'Ibis', 'Radison'];
final List<int> colorCodes = <int>[600, 500, 100];

class Donations extends StatelessWidget {
  Donations({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Food Donars"),
          backgroundColor: Colors.teal,
        ),
        body:Container(
          child: ListView.builder(
            itemCount: ChatModel.dummyData.length,
            itemBuilder: (context, index) {
              ChatModel _model = ChatModel.dummyData[index];
              return Column(
                children: <Widget>[
                  Divider(
                    height: 12.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(_model.avatarUrl),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(_model.name),
                        SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          _model.datetime,
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                    subtitle: Text(_model.message),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
    );
  }
}
