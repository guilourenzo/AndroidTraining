import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
        //actions: <Widget>[LogoutButton()],
      ),
      body: Center(
        child: Text('Página com conteúdo após autenticação'),
      ),
    );
  }
}
