import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _renderMainScreen(),
    );
  }

  Widget _renderMainScreen(){
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Center(child: Text('MiCard')),
      ),
      body: _renderBody(),
    );
  }

  Widget _renderBody(){
  }

}