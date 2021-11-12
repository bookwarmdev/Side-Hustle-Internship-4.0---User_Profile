import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profilepage/ui/core/style.dart';

class UserCardUI extends StatelessWidget {
  UserCardUI({required this.cardIcon, required this.cardText});

  String cardText = 'djdjdjd';
  IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(style: BorderStyle.solid,
        color: bwdIconsColor),
      ),
      child: ListTile(
        leading: Icon(
          cardIcon,
          color: bwdPrimaryColor,
          size: 30.0,
        ),
        title: Text(cardText, style: bwdTextTitle,),
        trailing: const Icon(
          Icons.navigate_next,
          color: bwdIconsColor,
          size: 40.0,
        ),
      ),
    );
  }
}
