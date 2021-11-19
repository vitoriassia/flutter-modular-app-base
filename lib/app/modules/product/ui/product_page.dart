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
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                ListTile(
                  title: Text("Red"),
                  onTap: () {
                    Modular.to.navigate('./red');
                  },
                ),
                ListTile(
                  title: Text("Blue"),
                  onTap: () {
                    Modular.to.navigate('./blue');
                  },
                ),
                ListTile(
                  title: Text("Green"),
                  onTap: () {
                    Modular.to.navigate('./green');
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: RouterOutlet(),
                ),
                ElevatedButton(
                  child: Text("Listar Produtos"),
                  onPressed: () {
                    Modular.to.pushNamed("./list",
                        arguments: ProductModel('1', "Vitor"));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
