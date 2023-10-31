import 'package:flutter/material.dart';
import 'package:todolist/app/exceptions/auth_exception.dart';
import 'package:todolist/app/services/user/user_service.dart';

class RegisterController extends ChangeNotifier {
  final UserService _userService;

  String? error;
  bool sucess = false;

  RegisterController({required UserService userService})
      : _userService = userService;

  Future<void> registerUser(String email, String password) async {
    try {
      error = null;
      sucess = false;
      notifyListeners();

      final user = await _userService.register(email, password);
      if (user != null) {
        //sucesso
        sucess = true;
      } else {
        //erro
        error = 'Erro ao registrar o usuário';
      }
    } on AuthException catch (e) {
      error = e.message;
    } finally {
      notifyListeners();
    }
  }
}
