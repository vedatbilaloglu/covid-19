import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(20.0),
            elevation: 20.0,
            color: Colors.amber[200],
            borderOnForeground: true,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 12.0,
                child: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
              ),
              title: Text('Bu bir Flutter uygulamasıdır.'),
              subtitle: Text('Bu yardımcı bir uygulamadır.'),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20.0),
            elevation: 20.0,
            color: Colors.amber[200],
            borderOnForeground: true,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 12.0,
                child: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
              ),
              title: Text('Bu bir Flutter uygulamasıdır.'),
              subtitle: Text('Bu yardımcı bir uygulamadır.'),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20.0),
            elevation: 20.0,
            color: Colors.amber[200],
            borderOnForeground: true,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 12.0,
                child: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
              ),
              title: Text('Bu bir Flutter uygulamasıdır.'),
              subtitle: Text('Bu yardımcı bir uygulamadır.'),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20.0),
            elevation: 20.0,
            color: Colors.amber[200],
            borderOnForeground: true,
            child: ListTile(
              title: Text('Bu bir Flutter uygulamasıdır.'),
              subtitle: Text('Bu yardımcı bir uygulamadır.'),
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 12.0,
                child: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
          Divider(color: Colors.orange,),
          Card(
            margin: EdgeInsets.all(20.0),
            elevation: 20.0,
            color: Colors.amber[200],
            borderOnForeground: true,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 12.0,
                child: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
              ),
              title: Text('Bu bir Flutter uygulamasıdır.'),
              subtitle: Text('Bu yardımcı bir uygulamadır.'),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
        ],
      );

  }

}