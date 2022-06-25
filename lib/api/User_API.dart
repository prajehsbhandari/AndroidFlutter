import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:good_benefit/api/http_services.dart';

import '../model/user.dart';
import '../response/login_response.dart';
import '../utils/url.dart';

class UserApi {
  Future<bool> registerUser(User user) async {
    bool isSignup = false;
    Response response;
    var url = baseUrl + registerUrl;
    var dio = HttpServices().getDioInstance();
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
    return isSignup;
  }

  Future<bool> login(String email, String password) async {
    bool isLogin = false;
    try {
      var url = baseUrl + loginUrl;
      var dio = HttpServices().getDioInstance();

      var response = await dio.post(
        url,
        data: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        LoginResponse loginResponse = LoginResponse.fromJson(response.data);
        token = loginResponse.token;
        debugPrint("$token");
        isLogin = true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return isLogin;
  }
}
