import 'package:app_modular/app/modules/auth/bloc/events/login_event.dart';
import 'package:app_modular/app/modules/auth/bloc/login_bloc.dart';
import 'package:app_modular/app/modules/auth/bloc/states/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bloc = Modular.get<LoginBloc>();

  @override
  void initState() {
    super.initState();
    bloc.stream.listen(
      (event) {
        if (event is LoginSuccess) {
          Modular.to.navigate('/product/red');
          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
        }

        if (event is LoginFailure) {
          ScaffoldMessenger.of(context)
            ..removeCurrentMaterialBanner()
            ..showMaterialBanner(_showMaterialBanner(context));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Login"),
          onPressed: () {
            bloc.add(LoginWithEmail("1", "2"));
          },
        ),
      ),
    );
  }
}

MaterialBanner _showMaterialBanner(BuildContext context) {
  return MaterialBanner(
      content: Text('Credenciais Invalidas'),
      leading: Icon(Icons.error),
      onVisible: () async {
        await Future.delayed(Duration(seconds: 3));
        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
      },
      padding: EdgeInsets.all(15),
      backgroundColor: Colors.red[400],
      contentTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      actions: [Container()]);
}
