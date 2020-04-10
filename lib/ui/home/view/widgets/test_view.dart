import 'package:coronasafe/font_data.dart';
import 'package:coronasafe/localization.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Center(
        child: Text(
          '${AppLocalizations.of(context).comingSoon}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontFamily: caviarDreams,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
