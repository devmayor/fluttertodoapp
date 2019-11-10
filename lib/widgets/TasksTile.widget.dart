import 'package:flutter/material.dart';


class TasksTile extends StatelessWidget {
  final Color textColor = Color(0xFFA1A1A2);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Late",
            style: TextStyle(color: textColor),
          ),
          ListTile(
            title: Text("Call Max"),
            subtitle:
                Text("2015 April 29", style: TextStyle(color: Colors.red)),
            contentPadding: EdgeInsets.all(0),
            trailing: Checkbox(
              value: false,
              onChanged: (val) => print("this is pressed " + val.toString()),
            ),
          ),
          Text(
            "Today",
            style: TextStyle(color: textColor),
          ),
          ListTile(
            title: Text("Practice Piano"),
            subtitle: Text("16:00"),
            contentPadding: EdgeInsets.all(0),
            trailing: Checkbox(
              value: false,
              onChanged: (val) => print("this is pressed " + val.toString()),
            ),
          ),
          ListTile(
            title: Text("Learn Spanish"),
            subtitle: Text("17:00"),
            contentPadding: EdgeInsets.all(0),
            trailing: Checkbox(
              value: false,
              onChanged: (val) => print("this is pressed " + val.toString()),
            ),
          ),
          Text(
            "Done",
            style: TextStyle(color: textColor),
          ),
          ListTile(
            title: Text(
              "Finalize presentation",
              style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.lineThrough),
            ),
            subtitle: Text("9:00 - 11:30"),
            contentPadding: EdgeInsets.all(0),
            trailing: Checkbox(
              value: true,
              onChanged: (val) => print("this is pressed " + val.toString()),
            ),
          )
          
        ],
      ),
    );
  }
}
