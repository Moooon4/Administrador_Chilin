import 'package:flutter/material.dart';

class PedidosPendientesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Pedidos pendientes',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            _Form1(context),
            _Form2(context),
          ],
        ));
  }

  Widget _Form1(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'pedidos_usuarios');
      },
      child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 15.0,
          )),
          Container(
            width: size.width * 0.85,
            margin: const EdgeInsets.symmetric(vertical: 30.0),
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0,
                  )
                ]),
            child: Column(
              children: <Widget>[
                Text('Pedido de "Nombre del usuario"',
                    style: TextStyle(fontSize: 20.0)),
                Row(
                  children: <Widget>[
                    Text(' Estado del pedido: "En espera" ',
                        style: TextStyle(fontSize: 20.0)),
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      radius: 12.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }

  Widget _Form2(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 200.0,
          )),
          Container(
            width: size.width * 0.85,
            margin: const EdgeInsets.symmetric(vertical: 30.0),
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0,
                  )
                ]),
            child: Column(
              children: <Widget>[
                Text('Pedido de "Nombre del usuario"',
                    style: TextStyle(fontSize: 20.0)),
                Row(
                  children: <Widget>[
                    Text(' Estado del pedido: "Finalizado" ',
                        style: TextStyle(fontSize: 20.0)),
                    CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      radius: 12.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
