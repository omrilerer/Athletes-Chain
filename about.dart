import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final infoAppColor = Color(0xFF0A0E21);
final infoBackColor = Colors.blueGrey[200];
final buttColor = Color(0xFF1D1E44);
final infoWriteColor = Color(0xFF1D1E10);

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: infoBackColor,
      appBar: AppBar(
        backgroundColor: infoAppColor,
        title: Text('Information',
          style: TextStyle(fontFamily: 'PermanentMarker',
              fontSize: 35.0),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text('App name: Athletes Chain',
                style: TextStyle(fontSize: 30.0,
                color: infoWriteColor),
                ),
              ),
          ),
          ),
          Divider(color: Colors.white,
            thickness: 2.5,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text('Created By: Lerer',
                  style: TextStyle(fontSize: 30.0,
                      color: infoWriteColor),
                ),
              ),
            ),
          ),
          Divider(color: Colors.white,
            thickness: 2.5,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text('App version: 1.0.0',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0,
                      color: infoWriteColor),
                ),
              ),
            ),
          ),
          Divider(color: Colors.white,
            thickness: 2.5,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text('The app icon (logo) was downloaded from: https://icons8.com.\n'
                    'Icon Sets that are possibly used by this app: Brandico, Elusive, Entypo, Font Awesome (4 and 5), '
                    'Fontelico, Iconic, Linearicons Free, Linecons, Maki, Meteocons, MfgLabs, Opticons, RPGAwesome,'
                    'Typicons, WebSymbols and Zocial.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17,
                      color: infoWriteColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }
}
