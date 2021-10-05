import 'package:flutter/material.dart';
import '../constants/constant.dart';
//import '../mobx_state/login_form_state.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../mobx_state/login.dart';

class LoginScreen extends StatelessWidget {
  //final loginState = LoginFormState();
  final login = Login();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: <Widget>[
            Text(
              'LOGIN FORM',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 5,
                color: Constants.colourAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: EmailWidget(
                state: login,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: PasswordWidget(
                state: login,
              ),
            ),
            Observer(
              builder: (_) => TextButton(
                child: Text('LOGIN'),
                onPressed: () {
                  login.loginStatus();
                },
              ),
            ),
            Observer(
              builder: (_) => Text(
                login.loginStatsVal ? 'OK DONE' : 'WRONG, TRY AGAIN',
                style: TextStyle(
                  color: login.loginStatsVal ? Colors.green : Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmailWidget extends StatelessWidget {
  final Login state;
  EmailWidget({required this.state});
  @override
  Widget build(BuildContext context) {
    reaction((p0) => state.email, (p0) {
      state.checkemail();
    });
    return Observer(
      builder: (_) => TextField(
        onChanged: (value) {
          state.setEmail(value);
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'xyz@gmail.com',
          errorText: state.showEmailMsg,
        ),
      ),
    );
  }
}

class PasswordWidget extends StatelessWidget {
  final Login state;
  PasswordWidget({required this.state});
  @override
  Widget build(BuildContext context) {
    reaction((p0) => state.password, (p0) {
      state.checkpassword();
    });
    return Observer(
      builder: (_) => TextField(
        obscureText: true,
        onChanged: (value) {
          state.setPassword(value);
        },
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'minimum 6 characters',
          errorText: state.showPasswordMsg,
        ),
      ),
    );
  }
}
