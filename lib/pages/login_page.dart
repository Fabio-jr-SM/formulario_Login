import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Carros"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _text("Login", "Digite o Login", controller: _tLogin),
          // ignore: prefer_const_constructors
          SizedBox(height: 20),
          _text("Senha", "Digite o Senha", password: true, controller: _tSenha),
          // ignore: prefer_const_constructors
          SizedBox(height: 20),
          _button("Login", _onClickLogin),
        ],
      ),
    );
  }

  _text(String label, String hint, {bool password = false, required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      // ignore: prefer_const_constructors
      style: TextStyle(
        fontSize: 20,
        color: Colors.blue,
      ),
      decoration: InputDecoration(
        labelText: label,
        // ignore: prefer_const_constructors
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
        hintText: hint,
        // ignore: prefer_const_constructors
        hintStyle: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }

  void _onClickLogin() {
    String login = _tLogin.text;
    String senha = _tSenha.text;

    // ignore: avoid_print
    print("Login: $login, Senha: $senha");
  }
}
