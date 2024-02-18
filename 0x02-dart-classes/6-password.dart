// Copied from 4-mutables.dart, going to extend this class to User class
class Password {
  String _password = '';

  // Constructor w/ named paramter
  Password({String password = ''}) {
    _password = password;
  }

  // Getter
  String get password => _password;

  // Setter
  set password(String newPassword) {
    _password = newPassword;
  }

  bool isValid() {
    bool lengthCheck = _password.length >= 8 && _password.length <= 16;

    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));

    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));

    bool hasNumber = _password.contains(RegExp(r'[0-9]'));

    return lengthCheck && hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
