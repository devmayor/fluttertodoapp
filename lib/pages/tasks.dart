import 'package:flutter/material.dart';
import '../widgets/TasksTile.widget.dart';

class Tasks extends StatelessWidget {
    final Color primaryColor = Color.fromRGBO(86, 135, 255, 1);
  final Color textColor = Color(0xFFA1A1A2);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          // title: Text(widget.title),
          backgroundColor: primaryColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () => print('clicked'),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 45, top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Icon(
                Icons.assignment,
                color: primaryColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 45, top: 30),
              child: Column(
                children: <Widget>[
                  Text(
                    "ALL",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("23 Tasks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ))
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.66),
                child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 45),
                width: double.infinity,

                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(25, 25),
                        topRight: Radius.elliptical(25, 25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TasksTile(),
                  ],
                ),
              ),
            ),
          ],
        )));

  }
}