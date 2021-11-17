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
            Modular.to.pushNamed("./list");
          },
        ),
      ),
    );
  }
}
