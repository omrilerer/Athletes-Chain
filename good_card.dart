import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'good_card.dart';

class GoodCard extends StatelessWidget {

  GoodCard(this.cardColor, this.cardChild);

  final Color cardColor;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
      ),
    );
  }
}