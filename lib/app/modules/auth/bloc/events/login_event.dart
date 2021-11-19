abstract class LoginEvent {}

class LoginWithEmail implements LoginEvent {
  final String email;
  final String password;

  LoginWithEmail(this.email, this.password);
}
