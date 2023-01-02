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
            },
          ),
          CupertinoButton( // ElevatedButton에 대응
            borderRadius: BorderRadius.circular(16.0),
            color:Colors.orange,
            child:Text('쿠퍼티노 AlertDialog'),
            onPressed: (){
              _showCupertinoDialog();
            },
          ),
          CupertinoButton(
            child:Text('쿠퍼티노 Picker'),
            onPressed: (){
              _showCupertinoPicker();
            },
          ),
        ],
      ),
    );
  }
  _showCupertinoDialog() {
   showDialog(
       context: context,
       builder: (context) => CupertinoAlertDialog(
     title:Text('제목'),
     content:Text('내용'),
     actions:<Widget>[
       CupertinoDialogAction(
         child:Text('Cancel'),
       ),
       CupertinoDialogAction(
         child:Text('Ok'),
         onPressed: (){
           Navigator.of(context).pop(); //다이얼로그 닫기
         },
       ),
     ],
   ),
   );
  }

  _showCupertinoPicker() async { // await를 사용하려면 메서드 선언 시 async 키워드 사용
    //0부터 9까지의 숫자 리스트 생성
    final _items = List.generate(10, (i) => i);
    var result = _items[0]; // 기본값 0

    await showCupertinoModalPopup(
        context: context,
        builder: (context) => Container(
          height:200.0, // 피커의 높이는 200,
          child:CupertinoPicker(
            children:_items.map((e) => Text('No. $e')).toList(), // 0부터 9까지의 숫자 표시
            itemExtent:50.0, // 항목 1개의 높이는 50
            onSelectedItemChanged: (int value) {
              result = _items[value]; // 선택한 값이 result 변수에 저장
            },
          ),
        ),
    );
  }
}

