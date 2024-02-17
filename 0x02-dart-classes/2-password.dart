// Create Password class w/ prop String password. add method isValid that returns true only
class Password {
  String password = '';

  bool isValid() {
    bool lengthCheck = password.length >= 8 && password.length <= 16;

    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));

    bool hasLowercase = password.contains(RegExp(r'[a-z]'));

    bool hasNumber = password.contains(RegExp(r'[0-9]'));

    return lengthCheck && hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
