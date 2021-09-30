import 'package:mobx/mobx.dart';

class LoginFormState {
  Observable<String> _password = Observable('');
  Observable<String> _email = Observable('');
  Action checkemail = Action(() {});
  Action checkpassword = Action(() {});
  Action setteremail = Action(() {});

  LoginFormBloc() {
    this._password = Observable('');
    this._email = Observable('');
    this.checkemail = Action(_checkemail);
    this.checkpassword = Action(_checkpassword);
    this.setteremail = Action(_setteremail);
  }

  set setemail(String newval) => _email.value = newval;
  get getemail => _email.value;

  void _setteremail(String newval) {
    setemail = newval;
  }

  bool _checkemail() {
    print(_email.value);
    if (_email.value.contains('@')) return true;
    return false;
  }

  bool _checkpassword() {
    if (_password.value.length > 6) return true;
    return false;
  }
}
