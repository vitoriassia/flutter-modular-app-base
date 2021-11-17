import 'package:app_modular/app/modules/product/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Product",
      )),
      body: Center(
        child: ElevatedButton(
          child: Text("Listar Produtos"),
          onPressed: () {
            Modular.to
                .pushNamed("./list", arguments: ProductModel('1', "Vitor"));
          },
        ),
      ),
    );
  }
}
