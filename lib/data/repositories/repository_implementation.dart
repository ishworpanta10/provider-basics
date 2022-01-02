import 'package:provider_demo/domain/repositories/abstract_repositories.dart';

class UserRepositoryImpl extends UserRepository {
  ///creating private constructor of [UserRepositoryImpl]
  UserRepositoryImpl._create();

  ///creating factory method of [UserRepositoryImpl]
  factory UserRepositoryImpl() => _instance;

  ///creating instance of [UserRepositoryImpl]
  static final UserRepositoryImpl _instance = UserRepositoryImpl._create();

  /// making getter for [UserRepositoryImpl]
  static UserRepositoryImpl get instance => _instance;

  @override
  Future<Map<String, dynamic>> getUserById(int id) {
    throw UnimplementedError();
  }
}
