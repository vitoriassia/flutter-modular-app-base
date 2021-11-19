import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/auth/');
  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) {
    // Pode criar teste de validação de token para proteger as navegações
    return true;
  }
}
