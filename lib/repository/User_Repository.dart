import 'package:untitled/api/user_api.dart';
import 'package:untitled/model/user.dart';

class UserRepository {
  Future<bool> registerUser(User user) async {
    return await UserApi().registerUser(user);
  }

  Future<bool> login(String username, String password) async {
    return UserApi().login(username, password);
  }
}
