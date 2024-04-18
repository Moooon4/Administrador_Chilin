import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _crearFondo(context),
        _loginForm(context),
      ],
    ));
  }

  Widget _loginForm(BuildContext context) {
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
            child: Column(children: <Widget>[
              Text('Registro', style: TextStyle(fontSize: 20.0)),
              SizedBox(
                height: 60.0,
              ),
              _crearEmail(),
              SizedBox(height: 30.0),
              _crearPassword(),
              SizedBox(height: 30.0),
              _crearBoton(context),
            ]),
          ),
          GestureDetector(
          onTap: () {
            // Navegar a la página de registro
            Navigator.pushNamed(context, 'login');
          },
          child: Text(
            '¿Ya tienes una cuenta?',
            style: TextStyle(
              color: Colors.blue, // Cambia el color del texto si lo deseas
            ),
          ),
        ),
          const SizedBox(height: 100.0),
        ],
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.alternate_email, color: Colors.deepPurple),
          hintText: 'ejemplo@gmail.com',
          labelText: 'Correo',
        ),
      ),
    );
  }
}

Widget _crearPassword() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        icon: const Icon(Icons.lock_outlined, color: Colors.deepPurple),
        labelText: 'Contraseña',
      ),
    ),
  );
}

Widget _crearBoton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, 'login');
    },
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
      backgroundColor: Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    child: const Text(
      'Registrarme',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

Widget _crearFondo(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final fondoMorado = Container(
    height: size.height * 0.4,
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          Color.fromRGBO(63, 63, 156, 1.0),
          Color.fromRGBO(90, 70, 178, 1.0)
        ],
      ),
    ),
  );

  final circulo = Container(
    width: 100.0,
    height: 100.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: const Color.fromRGBO(255, 255, 255, 0.05)),
  );

  return Stack(children: <Widget>[
    fondoMorado,
    Positioned(top: 85.0, left: 30.0, child: circulo),
    Positioned(top: -40.0, right: -30.0, child: circulo),
    Positioned(top: -40.0, left: -30.0, child: circulo),
    Positioned(bottom: -50.0, right: -10.0, child: circulo),
    Positioned(top: 20.0, left: 180.0, child: circulo),
    Positioned(top: 100.0, right: 30.0, child: circulo),
    Positioned(bottom: -15.0, left: -10.0, child: circulo),
    Positioned(top: 150.0, left: 160.0, child: circulo),
    Positioned(bottom: 60.0, left: 20.0, child: circulo),
    Container(
      padding: const EdgeInsets.only(top: 80.0),
      child: const Column(
        children: <Widget>[
          
          SizedBox(
            height: 10.0,
            width: double.infinity,
          ),
          Text('Pupusería Chilín',
              style: TextStyle(color: Colors.white, fontSize: 25.0)),
        ],
      ),
    )
  ]);
}
