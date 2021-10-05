import 'package:mobx/mobx.dart';
part 'login.g.dart';

// This is the class used by rest of your codebase
class Login = _Login with _$Login;

// The store-class
abstract class _Login with Store {
  @observable
  String _password = '';

  @observable
  String _email = '';

  @observable
  String _msgEmail = '';

  @observable
  bool _emailFlag = false;

  @observable
  bool _passwordFlag = false;

  @observable
  bool _loginFlag = false;

  @action
  void setEmail(String newval) => _email = newval;

  @action
  void setPassword(String newval) => _password = newval;

  @action
  void checkemail() {
    if (_email.contains('@'))
      _emailFlag = true;
    else
      _emailFlag = false;
  }

  @action
  void checkpassword() {
    if (_password.length > 6)
      _passwordFlag = true;
    else
      _passwordFlag = false;
  }

  @action
  void loginStatus() {
    if (_emailFlag && _passwordFlag)
      _loginFlag = true;
    else
      _loginFlag = false;
  }

  @computed
  String get email => _email;

  @computed
  String get password => _password;

  @computed
  String get showEmailMsg => _emailFlag ? "OK" : "ENTER VALID EMAIL";

  @computed
  String get showPasswordMsg => _passwordFlag ? "OK" : "ENTER VALID EMAIL";

  @computed
  bool get loginStatsVal => _loginFlag;
}
