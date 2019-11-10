import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Text('New task',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
            ),),
        ),
        elevation: 0,
        backgroundColor: Color(0xfffdfdfd),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            color: Colors.black,
            onPressed: ()=>Navigator.pop(context),
          )
        ],
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}