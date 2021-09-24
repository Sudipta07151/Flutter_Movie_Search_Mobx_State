import 'dart:async';

class LoginFormValidators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError('enter a valid email');
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length > 6) {
        sink.add(password);
      } else {
        sink.addError('enter a valid email');
      }
    },
  );
}
