import 'package:app_modular/app/modules/auth/auth_module.dart';
import 'package:app_modular/app/modules/auth/guards/auth_guard.dart';
import 'package:app_modular/app/modules/product/product_module.dart';
import 'package:app_modular/app/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [AsyncBind((i) => SharedPreferences.getInstance())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => SplashPage()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/product',
        module: ProductModule(),
        transition: TransitionType.rightToLeft,
        guards: [AuthGuard()])
  ];
}
