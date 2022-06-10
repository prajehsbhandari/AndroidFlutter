class LoginResponse {
  String? token;
  bool? success;

  LoginResponse({
    this.token,
    this.success,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        token: json["token"],
        success: json["success"],
      );
}
