import 'package:flutter/material.dart';
import '../models/categories.dart';
import '../utils/margin.dart';
import '../pages/tasks.dart';

class Tile extends StatelessWidget {
  final Category category;
  Tile(this.category);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Tasks(),
          ),
        );
      },
      child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          decoration: BoxDecoration(
            boxShadow: [
            new BoxShadow(
              offset: Offset(0, -1),
              spreadRadius: -15,
              color: Colors.black.withOpacity(0.1),
              blurRadius: 21,
            ),]
          ,
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/${category.image}.png',
                    width: 35, height: 35),
                YMargin(35),
                Text(
                  category.title,
                  style: TextStyle(fontSize: 18),
                ),
                YMargin(8),
                Text('${category.number.toString()} Tasks')
              ])),
    );
  }
}
