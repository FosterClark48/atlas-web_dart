// copied from 1-usertojson.dart, adding id prop, new instance fromJson, and method toString
class User {
  // Propteries
  String name;
  int age;
  double height;
  int id;

  // Constructor w/ named parameters
  User({required this.name, required this.age, required this.height, required this.id});

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
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

// Overrides Object.toString method to return a string representation of the User instance
@override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}
