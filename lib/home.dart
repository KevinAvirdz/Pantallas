import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SideDrawer(),
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
      body: Column(
        children: <Widget>[
          Divider(indent: 2),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Divider(indent: 2),
                SizedBox(
                  height: 220,
                  width: 250,
                  child: Container(
                    child: Image.network(
                        "https://s.cornershopapp.com/product-images/224602.png?versionId=aHTrTkJGMSy1MA0MU7THofS977rJPS.W"),
                  ),
                ),
                Divider(indent: 2),
                SizedBox(
                  height: 220,
                  width: 250,
                  child: Column(
                    children: const [
                      Text(''),
                      Text(''),
                      Text(''),
                      Text(''),
                      Text(
                        '  55.00',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Text(''),
                      Text(
                        '+ AGREGAR AL CARRITO',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '  HACER UNA PREGUNTA AL VENDEDOR',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Divider(indent: 2),
              SizedBox(
                height: 120,
                child: Column(
                  children: const [
                    Text(
                      'Descripcion',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 116, 0, 136),
                      ),
                    ),
                    Text(
                      'GEL ANTIBACTERIAL',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Practico envase de Gel antibacterial antiderrames',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(indent: 2),
              SizedBox(
                height: 30,
                child: Text(
                  'Tal vez te interese:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Divider(indent: 2),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Divider(indent: 2),
                    SizedBox(
                      height: 150,
                      width: 200,
                      child: Container(
                        child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2906/2906547.png"),
                      ),
                    ),
                    Divider(indent: 2),
                    SizedBox(
                      height: 150,
                      width: 200,
                      child: Container(
                        child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2906/2906547.png"),
                      ),
                    ),
                    Divider(indent: 2),
                    SizedBox(
                      height: 150,
                      width: 200,
                      child: Container(
                        child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2906/2906547.png"),
                      ),
                    ),
                    Divider(indent: 2),
                    SizedBox(
                      height: 150,
                      width: 200,
                      child: Container(
                        child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2906/2906547.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
