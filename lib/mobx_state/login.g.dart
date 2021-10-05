// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Login on _Login, Store {
  Computed<String>? _$emailComputed;

  @override
  String get email => (_$emailComputed ??=
          Computed<String>(() => super.email, name: '_Login.email'))
      .value;
  Computed<String>? _$passwordComputed;

  @override
  String get password => (_$passwordComputed ??=
          Computed<String>(() => super.password, name: '_Login.password'))
      .value;
  Computed<String>? _$showEmailMsgComputed;

  @override
  String get showEmailMsg =>
      (_$showEmailMsgComputed ??= Computed<String>(() => super.showEmailMsg,
              name: '_Login.showEmailMsg'))
          .value;
  Computed<String>? _$showPasswordMsgComputed;

  @override
  String get showPasswordMsg => (_$showPasswordMsgComputed ??= Computed<String>(
          () => super.showPasswordMsg,
          name: '_Login.showPasswordMsg'))
      .value;
  Computed<bool>? _$loginStatsValComputed;

  @override
  bool get loginStatsVal =>
      (_$loginStatsValComputed ??= Computed<bool>(() => super.loginStatsVal,
              name: '_Login.loginStatsVal'))
          .value;

  final _$_passwordAtom = Atom(name: '_Login._password');

  @override
  String get _password {
    _$_passwordAtom.reportRead();
    return super._password;
  }

  @override
  set _password(String value) {
    _$_passwordAtom.reportWrite(value, super._password, () {
      super._password = value;
    });
  }

  final _$_emailAtom = Atom(name: '_Login._email');

  @override
  String get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  final _$_msgEmailAtom = Atom(name: '_Login._msgEmail');

  @override
  String get _msgEmail {
    _$_msgEmailAtom.reportRead();
    return super._msgEmail;
  }

  @override
  set _msgEmail(String value) {
    _$_msgEmailAtom.reportWrite(value, super._msgEmail, () {
      super._msgEmail = value;
    });
  }

  final _$_emailFlagAtom = Atom(name: '_Login._emailFlag');

  @override
  bool get _emailFlag {
    _$_emailFlagAtom.reportRead();
    return super._emailFlag;
  }

  @override
  set _emailFlag(bool value) {
    _$_emailFlagAtom.reportWrite(value, super._emailFlag, () {
      super._emailFlag = value;
    });
  }

  final _$_passwordFlagAtom = Atom(name: '_Login._passwordFlag');

  @override
  bool get _passwordFlag {
    _$_passwordFlagAtom.reportRead();
    return super._passwordFlag;
  }

  @override
  set _passwordFlag(bool value) {
    _$_passwordFlagAtom.reportWrite(value, super._passwordFlag, () {
      super._passwordFlag = value;
    });
  }

  final _$_loginFlagAtom = Atom(name: '_Login._loginFlag');

  @override
  bool get _loginFlag {
    _$_loginFlagAtom.reportRead();
    return super._loginFlag;
  }

  @override
  set _loginFlag(bool value) {
    _$_loginFlagAtom.reportWrite(value, super._loginFlag, () {
      super._loginFlag = value;
    });
  }

  final _$_LoginActionController = ActionController(name: '_Login');

  @override
  void setEmail(String newval) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.setEmail');
    try {
      return super.setEmail(newval);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String newval) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.setPassword');
    try {
      return super.setPassword(newval);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkemail() {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.checkemail');
    try {
      return super.checkemail();
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkpassword() {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.checkpassword');
    try {
      return super.checkpassword();
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loginStatus() {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.loginStatus');
    try {
      return super.loginStatus();
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
showEmailMsg: ${showEmailMsg},
showPasswordMsg: ${showPasswordMsg},
loginStatsVal: ${loginStatsVal}
    ''';
  }
}
