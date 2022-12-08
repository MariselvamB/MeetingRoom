class SignInApi {
  String? username;
  String? password;

  SignInApi({this.username, this.password});

  factory SignInApi.fromJson(Map<String, dynamic> json) => SignInApi(
        username: json['username'] as String?,
        password: json['password'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
      };
}
