import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'good_card.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/maki_icons.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';
import 'package:fluttericon/zocial_icons.dart';

final backColor = Color(0xFF0A0E21);
final appColor = Color(0xFF1D1E44);
final buttColor = Color(0xFF1D1E44);
final soonColor = Color(0xFF1D1E10);


class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: backColor,
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text('Athletes Chain',
        style: TextStyle(fontFamily: 'PermanentMarker',
        fontSize: 30.0),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                GoodCard(backColor, Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.basketballBall, size: 40.0, color: Colors.white),
                  ],
                ),),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/nba');
                    },
                    child: GoodCard(buttColor, Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('NBA', style: TextStyle(
                            fontSize: 40.0, color: Colors.white,
                        ),)
                      ],
                    ),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                GoodCard(backColor, Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(RpgAwesome.soccer_ball, size: 40.0, color: Colors.white),
                  ],
                ),),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/soccer');
                    },
                    child: GoodCard(buttColor, Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('SOCCER', style: TextStyle(
                          fontSize: 40.0, color: Colors.white,
                        ),)
                      ],
                    ),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                GoodCard(backColor, Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Maki.tennis, size: 40.0, color: Colors.grey[800]),
                  ],
                ),),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: GoodCard(soonColor, Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('TENNIS', style: TextStyle(
                          fontSize: 40.0, color: Colors.grey,
                        ),)
                      ],
                    ),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                GoodCard(backColor, Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.running, size: 40.0, color: Colors.grey[800]),
                  ],
                ),),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: GoodCard(soonColor, Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('TRACK AND FIELD', style: TextStyle(
                          fontSize: 30.0, color: Colors.grey,
                        ),)
                      ],
                    ),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                GoodCard(backColor, Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.info, size: 40.0, color: Colors.white),
                  ],
                ),),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: GoodCard(buttColor, Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('About', style: TextStyle(
                          fontSize: 40.0, color: Colors.white,
                        ),)
                      ],
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  }
}
