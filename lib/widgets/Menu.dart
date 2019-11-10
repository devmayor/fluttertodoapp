import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  Widget menuLine({width = 25.0}) {
    return Container(
      height: 2,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: Color(0xff000000)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        menuLine(),
        SizedBox(
          height: 5,
        ),
        menuLine(),
        SizedBox(
          height: 5,
        ),
        menuLine(width: 20.0)
      ],
    );
  }
}
