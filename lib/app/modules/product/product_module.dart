import 'package:app_modular/app/modules/product/ui/list_product_page.dart';
import 'package:app_modular/app/modules/product/ui/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => ProductPage()),
    ChildRoute('/list',
        child: (context, args) => ListProductPage(args.data),
        customTransition: myCustomTransition)
  ];
}

CustomTransition myCustomTransition = CustomTransition(
  transitionBuilder: (context, animation, secondaryAnimation, child) {
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    final tween = Tween(begin: begin, end: end);
    final offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  },
);
