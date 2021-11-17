import 'package:app_modular/app/modules/product/ui/list_product_page.dart';
import 'package:app_modular/app/modules/product/ui/product_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => ProductPage()),
    ChildRoute('/list', child: (context, args) => ListProductPage())
  ];
}
