import 'package:athletes_chain/good_card.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'soccerBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'about.dart';

final soccback = Colors.green[900];
final soccspaces = Colors.green[400];
final soccapp = Colors.green[600];
final socctitle = Colors.white70;


final cont = TextEditingController();

class soccerPage extends StatefulWidget {
  @override
  _soccerPageState createState() => _soccerPageState();
}

class _soccerPageState extends State<soccerPage> {
  String userAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: soccback,
      appBar: AppBar(
        backgroundColor: soccapp,
        title: Text('Soccer Players and Coaches'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(width: double.infinity),
          Container(child: Center(
            child: Text('Level ' + soccerBrain().getLVL().toString(),
              style: TextStyle(color: socctitle,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          Container(child: Center(
            child: Text('Previous athlete:',
              style: TextStyle(color: socctitle,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          GoodCard(soccspaces, Center(
            child: Text(soccerBrain().getPREV(),
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
              child: Text(soccerBrain().getWRDS(),
                style: TextStyle(color: socctitle,
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
                  if (userAnswer.toLowerCase() == soccerBrain().getANS().toLowerCase()) {
                    setState(() {
                      cont.clear();
                      userAnswer = '';
                      if ((soccerBrain().nextOne()) == false) {
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
                  color: soccapp,
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
              style: TextStyle(color: socctitle,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          GoodCard(soccspaces, Center(
            child: Text(soccerBrain().getCONN(),
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
              style: TextStyle(color: socctitle,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          ),
          GoodCard(soccspaces, Center(
            child: Text(soccerBrain().getADD(),
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
