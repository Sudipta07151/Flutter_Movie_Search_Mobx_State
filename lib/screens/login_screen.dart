import 'package:flutter/material.dart';
import '../constants/constant.dart';
import '../mobx_state/login_form_state.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginScreen extends StatelessWidget {
  final loginState = LoginFormState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
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
                state: loginState,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: PasswordWidget(),
            ),
            TextButton(
              child: Text('LOGIN'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class EmailWidget extends StatelessWidget {
  final LoginFormState state;
  EmailWidget({required this.state});
  @override
  Widget build(BuildContext context) {
    bool check = false;
    reaction((_) => state.getemail, (_) {
      check = state.checkemail();
    });
    return Observer(
      builder: (_) => TextField(
        onChanged: (value) {
          print(value);
          state.setteremail();
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'xyz@gmail.com',
          errorText: check == true ? 'OK' : 'ENTER VALID EMAIL',
        ),
      ),
    );
  }
}

class PasswordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'minimum 6 characters',
        errorText: '',
      ),
    );
  }
}
