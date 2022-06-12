import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled/api/Http_Services.dart';
import 'package:untitled/model/User.dart';
import 'package:untitled/utils/Url.dart';

class User_API {
  Future<bool> registerUser(User user) async {
    bool isLogin = false;
    Response response;
    var url = baseUrl + registerUrl;
    var dio = Http_Services().getDioInstance();
    try {
      response = await dio.post(
        url,
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return isLogin;
  }
}
