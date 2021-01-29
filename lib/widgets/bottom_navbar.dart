import 'package:flutter/material.dart';
import 'package:homepedia_app/theme.dart';

class BottomNavbar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  BottomNavbar({this.imageUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 30,
        ),
        Spacer(),
        isActive ? Container(
          width: 30,
          height: 3,
          decoration: BoxDecoration(
            color: brownColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(99),
            ),
          ),
        ) : Container() ,
      ],
    );
  }
}
