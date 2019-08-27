import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _renderMainScreen(),
    );
  }

  Widget _renderMainScreen() {
    return Scaffold(
      backgroundColor: Colors.teal,
//      appBar: AppBar(
//        title: Center(child: Text('MiCard')),
//      ),
      body: _renderBody(),
    );
  }

  Widget _renderBody() {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _renderDp(),
            _renderName(),
            _renderJobTitle(),
            _renderDivider(),
            _renderButton(Icons.phone, '+92 315 9899097'),
            _renderButton(Icons.email, 'Haroonkhan9426@gmail.com'),
          ],
        ),
      ),
    );
  }

  Widget _renderDp() {
    return CircleAvatar(
      radius: 50.0,
      backgroundImage: AssetImage('assets/images/dp.jpg'),
    );
  }

  Widget _renderName() {
    return Text(
      'Haroon Khan',
      style: TextStyle(
        color: Colors.teal.shade50,
        fontFamily: 'pacifico',
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _renderJobTitle() {
    return Text(
      'Flutter Developer',
      style: TextStyle(
          fontFamily: 'SourceSansPro',
          fontSize: 20.0,
          color: Colors.teal[100],
          letterSpacing: 2.5,
          fontWeight: FontWeight.bold),
    );
  }

  Widget _renderButton(IconData icon, String text) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Colors.teal[900],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _renderDivider(){
    return SizedBox(
      height: 20.0,
      width: 150.0,
      child: Divider(
        color: Colors.teal[100],
      ),
    );
  }
}
