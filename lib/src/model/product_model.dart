// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {

    String id;
    String titulo;
    double valor;
    bool disponible;
    String fotoUrl;

    ProductModel({
        required this.id,
        this.titulo = '',
        this.valor = 0.0,
        this.disponible = true,
        required this.fotoUrl,
    });

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id          : json["id"],
        titulo      : json["titulo"],
        valor       : json["valor"],
        disponible  : json["disponible"],
        fotoUrl     : json["fotoUrl"],
    );

    Map<String, dynamic> toJson() => {
        "id"            : id,
        "titulo"        : titulo,
        "valor"         : valor,
        "disponible"    : disponible,
        "fotoUrl"       : fotoUrl,
    };
}
