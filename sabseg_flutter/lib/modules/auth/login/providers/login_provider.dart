
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginFormState {
  // final bool isPosting;
  // final bool isPosted;
  // final bool isvalid;
  final String email;
  final String password;

  LoginFormState({
    // this.isPosting = false,
    // this.isPosted = false,
    // this.isvalid = false,
    this.email = "",
    this.password = ""
  });

  LoginFormState copywith({
    bool? isPosting,
    bool? isPosted,
    bool? isvalid,
    String? email,
    String? password,
  }) =>
      LoginFormState(
        // isPosting: isPosting ?? this.isPosting,
        // isPosted: isPosted ?? this.isPosted,
        // isvalid: isvalid ?? this.isvalid,
        email: email ?? this.email,
        password: password ?? this.password,
      );

  @override
  String toString() => '''
  LoginFormState:
    // isPosting: $isPosting,
    // isPosted: $isPosted,
    // isvalid: $isvalid,
    email: $email,
    password: $password,
''';
}


final loginFormProvider =
    StateNotifierProvider.autoDispose<LoginFormNotifier, LoginFormState>((ref) {
  final loginCallback = ref.watch(authProvider.notifier).login;

  return LoginFormNotifier(loginCallBack: loginCallback);
});
