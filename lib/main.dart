import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Map<int, Color> color = {
    50: Color.fromRGBO(86, 135, 255, .1),
    100: Color.fromRGBO(86, 135, 255, .2),
    200: Color.fromRGBO(86, 135, 255, .3),
    300: Color.fromRGBO(86, 135, 255, .4),
    400: Color.fromRGBO(86, 135, 255, .5),
    500: Color.fromRGBO(86, 135, 255, .6),
    600: Color.fromRGBO(86, 135, 255, .7),
    700: Color.fromRGBO(86, 135, 255, .8),
    800: Color.fromRGBO(86, 135, 255, .9),
    900: Color.fromRGBO(86, 135, 255, 1),
  };

  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFF5687FF, color);
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: MyHomePage(title: 'Todo APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Color primaryColor = Color.fromRGBO(86, 135, 255, 1);
  final Color textColor = Color(0xFFA1A1A2);

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: widget.primaryColor,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          // title: Text(widget.title),
          backgroundColor: widget.primaryColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => print('clicked'),
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
                color: widget.primaryColor,
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
            Expanded(child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
              Text("jsjsjs"),
            ],),)
            ],
        )));
  }
}
