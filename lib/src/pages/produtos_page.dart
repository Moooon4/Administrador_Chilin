import 'package:flutter/material.dart';
import 'package:pantallas_admin_chilin/src/model/product_model.dart';
import 'package:pantallas_admin_chilin/src/utils/utils.dart' as utils;

class ProductsPage extends StatefulWidget {
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final formKey = GlobalKey<FormState>();

  ProductModel producto = new ProductModel(id: '', fotoUrl: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Producto', style: TextStyle(
              color: Colors.white,
            ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_size_select_actual,
        color: Colors.white,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt,
        color: Colors.white,),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          
          padding: EdgeInsets.all(15.0),
          child: Form(
            
            key: formKey,
            child: Column(children: <Widget>[
              SizedBox(
            height: 250.0,
            width: 450.0,
            child: Image.asset('assets/pupusasrevueltas.jpg'),
          ),
              _crearNombre(),
              _crearPrecio(),
              _crearDisponible(),
              _crearBoton()
            ]),
          ),
        ),
      ),
    );
  }

  Widget _crearNombre() {
    return TextFormField(
      initialValue: producto.titulo,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Producto'),
      onSaved: (value) => producto.titulo = value!,
      validator: (value) {
        if (value == null || value.isEmpty || value.length < 3) {
          return 'Ingrese el nombre del producto';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearPrecio() {
    return TextFormField(
      initialValue: producto.valor.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(labelText: 'Precio'),
      onSaved: (value) => producto.valor = double.parse(value!),
      validator: (value) {
        if (value == null || value.isEmpty || !utils.isNumeric(value)) {
          return 'Ingrese el precio del producto';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearDisponible(){

    return SwitchListTile(
      value: producto.disponible,
      title: Text('Disponible'),
      activeColor: Colors.deepPurple,
      onChanged: (value) => setState(() {
        producto.disponible = value;
    }),
    );
  }

  Widget _crearBoton() {
    return ElevatedButton.icon(
      icon: Icon(
        Icons.save,
        color: Colors.white,
      ),
      label: Text('Guardar'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      onPressed: _submit,
    );
  }

  void _submit() {
    if (formKey.currentState!.validate()) {
      return;
      /*
      formKey.currentState?.save();
      print(producto.titulo);
      print(producto.valor);
      print(producto.disponible);
      */
    }
  }
}
