import 'package:flutter/material.dart';

import 'menu.dart';

class Login extends StatefulWidget {
  static String id = 'Login';

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.network(
                    "https://seeklogo.com/images/C/company-logo-3E4893BFFC-seeklogo.com.png"),
              ),
              SizedBox(
                height: 15,
              ),
              _Textodeusuario(),
              SizedBox(
                height: 15,
              ),
              _textodeContrasena(),
              SizedBox(
                height: 20,
              ),
              _Button(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Textodeusuario() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correoelectronico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _textodeContrasena() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'contrasena',
            labelText: 'contrasena',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _Button() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text(
            'Iniciar sesion',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        color: Colors.orange,
        onPressed: () {
          myController1.text = "admin";
          myController2.text = "admin";
          if (myController1.text == "admin" && myController2.text == "admin") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => menu()),
            );
          } else {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Haz colocado los datos incorrectos"),
                  );
                });
          }
        },
      );
    });
  }
}
