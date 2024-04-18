import 'package:flutter/material.dart';
import 'package:pantallas_admin_chilin/src/pages/home_page.dart';
import 'package:pantallas_admin_chilin/src/pages/login_page.dart';
import 'package:pantallas_admin_chilin/src/pages/pedidos_pendientes.dart';
import 'package:pantallas_admin_chilin/src/pages/pedidos_usuario.dart';
import 'package:pantallas_admin_chilin/src/pages/produtos_page.dart';
import 'package:pantallas_admin_chilin/src/pages/registro.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'home': (BuildContext context) => HomePage(),
        'products': (BuildContext context) => ProductsPage(),
        'pedidos_pendientes': (BuildContext context) => PedidosPendientesPage(),
        'pedidos_usuario': (BuildContext context) => PedidosUsuarioPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
    );
  }
}
