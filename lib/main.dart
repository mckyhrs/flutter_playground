import 'package:flutter/material.dart';

void main() {
 runApp(
   MyApp(),
 );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AccountBook',
      home: InputForm(),
    );
  }
}

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        actions: [
          // IconButton(onPressed: _pushSaved, icon: Icon(Icons.list))
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              Text(
                "$_text",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
                )
              ),
              new TextField(
                maxLength: 10,
                maxLines: 1,
                onChanged: _handleText,
              )
            ],
          ),
        ),
      )
    );
  }

  // void _pushSaved() {
  //   Navigator.of(context).push(
  //   );
  // }
}
