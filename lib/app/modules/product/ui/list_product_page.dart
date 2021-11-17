import 'package:app_modular/app/modules/product/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListProductPage extends StatelessWidget {
  final ProductModel productModel;
  ListProductPage(this.productModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Lista produto id ${productModel.id} ${productModel.name} ",
      )),
      body: Center(
        child: ElevatedButton(
          child: Text("Voltar"),
          onPressed: () {
            Modular.to.pop();
          },
        ),
      ),
    );
  }
}
