class SignInDTO {
  final String email;
  final String password;

  SignInDTO({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
