import 'package:flutter/material.dart';
import '../blocs/login_form_bloc.dart';

class Provider extends InheritedWidget {
  Provider({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final bloc = LoginFormBloc();
  @override
  bool updateShouldNotify(_) => true;

  // static LoginFormBloc of(BuildContext context) {

  // }
}
