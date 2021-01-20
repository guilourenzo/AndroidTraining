import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  height: 20,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'E-mail',
                              border: OutlineInputBorder()),
                        ),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder()),
                        ),
                        RaisedButton(
                          color: Colors.black,
                          onPressed: () {
                            if (email == 'teste@guido' && password == '123') {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            } else {
                              print('login invalido');
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:
                Image.asset('assets/images/background.jpg', fit: BoxFit.cover)),
        _body()
      ],
    ));
  }
}
