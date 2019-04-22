import 'package:eatwithme/chat.dart';
import 'package:flutter/material.dart';

// import 'package:eatwithme/pages/home_placeholder.dart';
// import 'package:eatwithme/theme/eatwithme_theme.dart';
// import 'package:eatwithme/utils/constants.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Chat here',
      theme: new ThemeData(
          primaryColor: Colors.white
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Input User name"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                  labelText: 'user name'
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => ChatPage(_controller.text)));
            },
            child: Text("Submit", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}