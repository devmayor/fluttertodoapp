import 'package:flutter/material.dart';
import '../widgets/Menu.dart';
import '../widgets/Tile.dart';
import '../utils/margin.dart';
import '../models/categories.dart';
import './newtask.dart';

class HomePage extends StatelessWidget {
  //   final Color primaryColor = Color.fromRGBO(86, 135, 255, 1);
//   final Color textColor = Color(0xFFA1A1A2);
  final List data = [
    {'title': 'All', 'image': 'all', 'number': 23},
    {'title': 'Work', 'image': 'work', 'number': 14},
    {'title': 'Music', 'image': 'music', 'number': 6},
    {'title': 'Travel', 'image': 'travel', 'number': 1},
    {'title': 'Study', 'image': 'study', 'number': 2},
    {'title': 'Home', 'image': 'home', 'number': 14},
    {'title': 'Art', 'image': 'play', 'number': 13},
    {'title': 'Shopping', 'image': 'shop', 'number': 2},
  ];

  List<Category> get dataSet {
    return data
        .map((value) => Category(
            title: value['title'],
            image: value['image'],
            number: value['number']))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final list = Text(
      'Lists',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Color(0xfffdfdfd),
            brightness: Brightness.light,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              YMargin(10.0),
              MenuIcon(),
              YMargin(30.0),
              list,
              YMargin(30.0),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  // padding: EdgeInsets.all(20),
                  children: dataSet.map((val)=>Tile(val)).toList(),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(elevation: 2,
        child: Icon(Icons.add), onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewTask(),
          ),
        );},),
        );
  }
}
