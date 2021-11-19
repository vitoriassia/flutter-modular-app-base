class LoginRepository {
  Future<bool> login(String email, String password) async {
    if (email == '1' && password == '1') {
      return true;
    } else {
      throw Exception('Credenciais Invalidas');
    }
  }
}
