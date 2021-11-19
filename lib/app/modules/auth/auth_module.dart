import 'package:app_modular/app/modules/auth/bloc/login_bloc.dart';
import 'package:app_modular/app/modules/auth/repositories/login_repository.dart';
import 'package:app_modular/app/modules/auth/ui/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => LoginRepository()),
    Bind.singleton((i) => LoginBloc(i.get<LoginRepository>(), i()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => LoginPage())
  ];
}
