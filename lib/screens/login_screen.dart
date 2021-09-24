import 'package:flutter/material.dart';
import '../constants/constant.dart';
import '../blocs/login_form_bloc.dart';

class LoginScreen extends StatelessWidget {
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
              child: EmailWidget(),
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
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: loginBloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: loginBloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'xyz@gmail.com',
              errorText: snapshot.error.toString(),
            ),
          );
        });
  }
}

class PasswordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: loginBloc.password,
      builder: (context, snapshot) {
        return TextField(
          obscureText: true,
          onChanged: loginBloc.changePassword,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'minimum 6 characters',
            errorText: snapshot.error.toString(),
          ),
        );
      },
    );
  }
}
