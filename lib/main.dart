import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Drop Down'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selected = "Choose";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              selected,
              style: TextStyle(fontSize: 50),
            ),
            DropdownButton(
              iconSize: 60,
              items: [
                DropdownMenuItem(
                  value: "Easy",
                  child: Text("Easy"),
                ),
                DropdownMenuItem(
                  value: "Forakn",
                  child: Text("Forakn"),
                ),
                DropdownMenuItem(
                  value: "Pritam",
                  child: Text("Pritam"),
                ),
                DropdownMenuItem(
                  value: "Ahad",
                  child: Text("Head of Ahad"),
                ),
              ],
              onChanged: (val) {
                setState(() {
                  selected = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
