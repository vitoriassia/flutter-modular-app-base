import 'package:app_modular/app/modules/auth/bloc/events/login_event.dart';
import 'package:app_modular/app/modules/auth/bloc/states/login_state.dart';
import 'package:app_modular/app/modules/auth/repositories/login_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  final SharedPreferences sharedPreferences;
  LoginBloc(this.loginRepository, this.sharedPreferences) : super(LoginIdle()) {
    on<LoginWithEmail>(loginEmail);
  }

  Future loginEmail(LoginWithEmail event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      await loginRepository.login(event.email, event.password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure("Credenciais Invalidas"));
    }
  }
}
