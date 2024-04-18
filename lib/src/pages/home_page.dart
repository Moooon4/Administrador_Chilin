import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Administrador "NOMBRE"', style: TextStyle(
              color: Colors.white,
            ),),
      ),
      body: Container(
        child: Column(children: <Widget>[
          SizedBox(
            height: 350.0,
            width: 450.0,
            child: Image.asset('assets/pupusasrevueltas.jpg'),
          ),
          Text('Pupusas Revueltas con Loroco',
              style: TextStyle(fontSize: 20.0)),
          Text('4.99', style: TextStyle(fontSize: 20.0)),
        ]),
      ),
      floatingActionButton: _crearBotones(context),
    );
  }

  Widget _crearBotones(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0), //caja transparente de 30 puntos
        FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            child: Icon(Icons.download,
        color: Colors.white,),
            onPressed: () =>
                Navigator.pushNamed(context, 'pedidos_pendientes')),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            child: Icon(Icons.add,
        color: Colors.white,),
            onPressed: () => Navigator.pushNamed(context, 'products')),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
