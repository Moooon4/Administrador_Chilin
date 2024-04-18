import 'package:flutter/material.dart';

class PedidosUsuarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Pedido de "Nombre del usuario"', style: TextStyle(
              color: Colors.white,
            ),),
        ),
        body: Stack(
          children: <Widget>[
            _Form(context),
          ],
        ));
  }


Widget _Form(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
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
            child: Column(children: <Widget>[
              Text('Cliente: "Nombre del usuario"',
                  style: TextStyle(fontSize: 20.0)),
              Text('Fecha: dd/mm/yyyy', style: TextStyle(fontSize: 20.0)),
              Text('1 Queso con Loroco',
                  style: TextStyle(fontSize: 20.0)),
              SizedBox(height: 30.0),
              _crearBoton(context),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _crearBoton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'home');
      },
      
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: const Text(
        'FINALIZAR PEDIDO',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
