import 'package:firebase_auth/firebase_auth.dart';
import 'package:todolist/app/repositories/user/user_repository.dart';
import 'package:todolist/app/services/user/user_service.dart';

class UserServiceImpl implements UserService {
  final UserRepository _userRepository;

  UserServiceImpl({required userRepository}) : _userRepository = userRepository;

  @override
  Future<User?> register(String email, String password) =>
      _userRepository.register(email, password);
}
