import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }
}

_body() {
  return Container(
    padding: EdgeInsets.all(16),
    child: ListView(
      children: <Widget>[
        _text("Login", "Digite o Login"),
        SizedBox(height: 20),
        _text("Senha", "Digite o Senha", password: true),
        SizedBox(height: 20),
        _button("Login"),
      ],
    ),
  );
}

_text(String label, String hint, {bool password = false}) {
  return TextFormField(
    controller: _tLogin,
    obscureText: password,
    style: TextStyle(
      fontSize: 20,
      color: Colors.blue,
    ),
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        fontSize: 20,
        color: Colors.blue,
      ),
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 16,
      ),
    ),
  );
}

_button(String text) {
  return Container(
    height: 46,
    child: RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
      onPressed: () {},
    ),
  );
}
