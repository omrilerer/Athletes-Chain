import 'package:athletes_chain/good_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'nbaBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

final bballback = Colors.orange[900];
final bballspaces = Colors.orange[400];
final bballapp = Colors.orange[600];
final cont = TextEditingController();

class nbaPage extends StatefulWidget {
  @override
  _nbaPageState createState() => _nbaPageState();
}

class _nbaPageState extends State<nbaPage> {
  String userAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: bballback,
      appBar: AppBar(
        backgroundColor: bballapp,
        title: Text('NBA Players and Coaches'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(width: double.infinity),
          Container(child: Center(
            child: Text('Level ' + nbaBrain().getLVL().toString(),
              style: TextStyle(color: backColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          Container(child: Center(
            child: Text('Previous athlete:',
              style: TextStyle(color: backColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          GoodCard(bballspaces, Center(
            child: Text(nbaBrain().getPREV(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PermanentMarker',
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
          ),
          ),
          SizedBox(height: 10.0),
          Container(
            child: Center(
              child: Text(nbaBrain().getWRDS(),
                style: TextStyle(color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
                    currentFocus.focusedChild.unfocus();
                  }
                  if (userAnswer.toLowerCase() == nbaBrain().getANS().toLowerCase()) {
                    setState(() {
                      cont.clear();
                      userAnswer = '';
                      if ((nbaBrain().nextOne()) == false) {
                        Alert(
                          context: context,
                          type: AlertType.success,
                          title: "Congratulations, You've finished the chain!",
                          desc: "Don't worry though, soon we'll add new connections.",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Start over",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            )
                          ],
                        ).show();
                      }
                    });
                  }
                },
                child: GoodCard(Colors.black, Text('GO', style: TextStyle(
                  fontSize: 35.0,
                  color: bballapp,
                ),
                ),
                ),
              ),
              Expanded(
                child: GoodCard(Colors.white,
                  TextField(
                    controller: cont,
                    onChanged: (value) {
                      userAnswer = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Type next athlete\'s name here',
                      hintStyle: TextStyle(color: Colors.grey,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Divider(color: Colors.white,
          thickness: 5.0),
          SizedBox(height: 15.0),
          Container(child: Center(
            child: Text('Connection to the previous athlete:',
              style: TextStyle(color: backColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          GoodCard(bballspaces, Center(
            child: Text(nbaBrain().getCONN(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20.0,
              ),
            ),
          ),
          ),
          Container(child: Center(
            child: Text('Additional information:',
              style: TextStyle(color: backColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          GoodCard(bballspaces, Center(
            child: Text(nbaBrain().getADD(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20.0,
              ),
            ),
          ),
          )

        ],
      ),
    );
  }
}
