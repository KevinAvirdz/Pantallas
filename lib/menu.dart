// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert_sharp),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text('holis'),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Bienvenido',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Mensajes'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text('Compras'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.favorite_sharp),
            title: Text('Favoritos'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()))
            },
          ),
          ListTile(
            leading: Icon(Icons.warning_sharp),
            title: Text('Terminos y condiciones'),
            onTap: () => {},
          ),
          Expanded(child: Container()),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('configuracion'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
