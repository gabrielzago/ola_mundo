import 'package:flutter/material.dart';

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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                  'https://i.pinimg.com/originals/50/b7/1e/50b71e496ac802859a9adfc3adf547c9.jpg'),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image.asset('asset/image/lua.jpg'),
            ),
            Container(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, top: 20, right: 12, bottom: 12),
              child: Card(
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'E-mail'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                    ),
                    SizedBox(height: 15),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {
                        if (email == 'a@a.com' && password == '123') {
                          // Navigator.of(context).pushReplacement(
                          //     MaterialPageRoute(builder: (context) => HomePage()));
                          //
                          Navigator.of(context).pushReplacementNamed("/home");
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text('Entrar', textAlign: TextAlign.center)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'asset/image/background.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}
