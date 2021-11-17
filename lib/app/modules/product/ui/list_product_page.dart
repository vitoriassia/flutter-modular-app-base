import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Lista produto",
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
