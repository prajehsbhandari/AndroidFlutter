import 'package:flutter_test/flutter_test.dart';
import 'package:good_benefit/model/user.dart';
import 'package:good_benefit/repository/user_repository.dart';

Future<void> main() async {
  test('user registration ', () async {
    bool expectedResult = true;

    User user =
        User(username: "Admin", email: "prajesh@gmail.com", password: "123");
    bool actualResult = await UserRepository().registerUser(user);
    expect(expectedResult, actualResult);
  });
}
