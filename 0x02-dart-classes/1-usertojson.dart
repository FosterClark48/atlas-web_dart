// Create User class w/ props name, age, height and method toJson that returns a map representation of the User
class User {
  // Propteries
  String name;
  int age;
  double height;

  // Constructor w/ named parameters
  User({required this.name, required this.age, required this.height});

  // Method
  String showName() {
    return 'Hello $name';
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}
