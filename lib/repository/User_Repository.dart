import 'lib:batch28_api_starter/api/user_api.dart';
import 'package:batch_28'
import 'package:untitled/api/User_API.dart';
import 'package:untitled/model/user.dart';

class UserRepository {
  Future<bool> registerUser(User user) async {
    return await UserApi().registerUser(user);
  }
}
