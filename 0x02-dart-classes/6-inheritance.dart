// copied from 5-json_to_user.dart, extending Password class, adding prop user_password
import '6-password.dart';

class User extends Password{
  // Propteries
  String name;
  int age;
  double height;
  int id;

  // Constructor w/ named parameters, also initializes Password with user_password if provided
  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
    String user_password = '',
    }) : super(password: user_password);

  // user_password getter to access the private _password from Password
  String get user_password => this.password;

  // user_password setter to update the private _password in Password
  set user_password(String newPassword) {
    this.password = newPassword; // Use the inherited password setter
  }

  // Method
  String showName() {
    return 'Hello $name';
  }

  // Converts the User instance to a Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Factory constructor to create a User instance from a map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] as int? ?? 0,
      name: userJson['name'] as String? ?? 'Unknown',
      age: userJson['age'] as int? ?? 0,
      height: userJson['height'] as double? ?? 0.0,
      user_password: userJson['user_password'] as String? ?? '',
    );
  }

// Overrides Object.toString method to return a string representation of the User instance
@override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
