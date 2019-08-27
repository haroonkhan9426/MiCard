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
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _renderDp(),
            _renderName(),
            _renderJobTitle(),
            _renderContactButton(),
            _renderEmailButton(),
          ],
        ),
      ),
    );
  }

  Widget _renderDp(){
    return CircleAvatar(
      radius: 50.0,
      backgroundImage: AssetImage('assets/images/dp.jpg'),
    );
  }

  Widget _renderName(){
    Text('Haroon Khan',
    )
  }

}