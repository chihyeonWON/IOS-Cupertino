import 'package:flutter/cupertino.dart'; // 쿠퍼티노 위젯
import 'package:flutter/material.dart'; // 머터리얼 위젯

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CupertinoNavigationBar( // 머터리얼 AppBar에 대응
        middle:Text('4.10 쿠퍼티노 디자인'), // 머터리얼 AppBar의 title에 대응
      ),
      body:Column(
        children:<Widget>[
          CupertinoSwitch(
            value:_isOn,
            onChanged:(bool value) { // Switch에 대응
              setState(() {
                _isOn = value;
              });
            }
          )
        ]
      )
    );
  }
}

