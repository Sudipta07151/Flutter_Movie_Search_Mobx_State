import 'dart:async';
import 'package:provider/provider.dart';

import '../blocs/login_form_validators.dart';

class LoginFormBloc extends Object with LoginFormValidators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void dispose() {
    print('called');
    _emailController.close();
    _passwordController.close();
  }
}

final loginBloc = LoginFormBloc();
