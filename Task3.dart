import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hello'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print('Tap on container');
          },
          onLongPress: () {
            print('Long press on container');
          },
          onDoubleTap: () {
            print('Double tap on container');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors
                .amber, // We use InkWell when we have to click on a particular widget
            child: Center(
              child: InkWell(
                onTap: () {
                  print('Text widget Tapped!');
                },
                child: Text(
                  "Click here",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
